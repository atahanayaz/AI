# Fuzzy Logic Controller - Design Document

**Students:** Album #103569, #103512
**Dataset Number:** 22
**Calculation:** 1 + (207081 mod 29) = 22

---

## Problem Description (Human Language)

### Scenario: Restaurant Tip Calculator

We want to design a fuzzy logic system that calculates an appropriate tip percentage at a restaurant based on:
1. **Food Quality**: How good was the food? (scale 0-10)
2. **Service Quality**: How good was the service? (scale 0-10)

The system will output:
- **Tip Percentage**: How much tip to give (scale 0-30%)

### Why Fuzzy Logic?

Human decision-making about tips is fuzzy:
- "The food was **pretty good**" (not exactly 7.5/10)
- "Service was **excellent**" (not exactly 10/10)
- "I'll leave a **decent tip**" (not exactly 18%)

Fuzzy logic allows us to model this imprecise, human-like reasoning.

---

## Input Variables

### Input 1: Food Quality (0-10)
- **Universe of Discourse**: [0, 10]
- **Fuzzy Sets**:
  1. **Poor** (0-5): Triangular membership function
  2. **Average** (2-8): Triangular membership function
  3. **Excellent** (5-10): Triangular membership function

**Membership Functions:**
```
Poor:      Peak at 0, base from 0 to 5
Average:   Peak at 5, base from 2 to 8
Excellent: Peak at 10, base from 5 to 10
```

### Input 2: Service Quality (0-10)
- **Universe of Discourse**: [0, 10]
- **Fuzzy Sets**:
  1. **Poor** (0-5): Triangular membership function
  2. **Average** (2-8): Triangular membership function
  3. **Excellent** (5-10): Triangular membership function

**Membership Functions:**
```
Poor:      Peak at 0, base from 0 to 5
Average:   Peak at 5, base from 2 to 8
Excellent: Peak at 10, base from 5 to 10
```

---

## Output Variable

### Output: Tip Percentage (0-30%)
- **Universe of Discourse**: [0, 30]
- **Fuzzy Sets**:
  1. **Low** (0-15%): Triangular membership function
  2. **Medium** (10-20%): Triangular membership function
  3. **High** (15-30%): Triangular membership function

**Membership Functions:**
```
Low:    Peak at 5%, base from 0 to 15%
Medium: Peak at 15%, base from 10 to 20%
High:   Peak at 25%, base from 15 to 30%
```

---

## Fuzzy Rules

We define 9 rules (3 food levels × 3 service levels):

1. **IF** Food is **Poor** AND Service is **Poor** **THEN** Tip is **Low**
2. **IF** Food is **Poor** AND Service is **Average** **THEN** Tip is **Low**
3. **IF** Food is **Poor** AND Service is **Excellent** **THEN** Tip is **Medium**

4. **IF** Food is **Average** AND Service is **Poor** **THEN** Tip is **Low**
5. **IF** Food is **Average** AND Service is **Average** **THEN** Tip is **Medium**
6. **IF** Food is **Average** AND Service is **Excellent** **THEN** Tip is **High**

7. **IF** Food is **Excellent** AND Service is **Poor** **THEN** Tip is **Medium**
8. **IF** Food is **Excellent** AND Service is **Average** **THEN** Tip is **High**
9. **IF** Food is **Excellent** AND Service is **Excellent** **THEN** Tip is **High**

---

## Rule Matrix (Visual Representation)

|                  | **Service: Poor** | **Service: Average** | **Service: Excellent** |
|------------------|-------------------|----------------------|------------------------|
| **Food: Poor**   | Low               | Low                  | Medium                 |
| **Food: Average**| Low               | Medium               | High                   |
| **Food: Excellent**| Medium          | High                 | High                   |

---

## Fuzzy Inference Process

### Step 1: Fuzzification
Convert crisp inputs (e.g., Food=7.5, Service=8.3) to fuzzy membership values.

**Example:**
- Food = 7.5
  - μ(Average) = 0.17 (small overlap with Average)
  - μ(Excellent) = 0.83 (large overlap with Excellent)

- Service = 8.3
  - μ(Average) = 0.05 (tiny overlap with Average)
  - μ(Excellent) = 0.95 (almost completely Excellent)

### Step 2: Rule Evaluation
Apply fuzzy rules using AND operator (minimum).

**Example:**
- Rule 5: Food is Average AND Service is Average
  - Strength = min(0.17, 0.05) = 0.05
  - Consequent: Tip is Medium (with strength 0.05)

- Rule 6: Food is Average AND Service is Excellent
  - Strength = min(0.17, 0.95) = 0.17
  - Consequent: Tip is High (with strength 0.17)

- Rule 8: Food is Excellent AND Service is Average
  - Strength = min(0.83, 0.05) = 0.05
  - Consequent: Tip is High (with strength 0.05)

- Rule 9: Food is Excellent AND Service is Excellent
  - Strength = min(0.83, 0.95) = 0.83
  - Consequent: Tip is High (with strength 0.83)

### Step 3: Aggregation
Combine all active rules using OR operator (maximum).

**Example:**
- Tip is Medium: max(0.05) = 0.05
- Tip is High: max(0.17, 0.05, 0.83) = 0.83

### Step 4: Defuzzification
Convert fuzzy output to crisp value using centroid method.

**Result:** Tip ≈ 23-24% (crisp value)

---

## Test Cases

### Test Case 1: Poor Food, Poor Service
- **Inputs**: Food = 2, Service = 2
- **Expected Output**: Low tip (~5-8%)
- **Reasoning**: Both quality levels are poor, customer dissatisfied

### Test Case 2: Excellent Food, Excellent Service
- **Inputs**: Food = 9, Service = 9.5
- **Expected Output**: High tip (~23-25%)
- **Reasoning**: Both quality levels are excellent, customer very satisfied

### Test Case 3: Average Food, Good Service
- **Inputs**: Food = 5, Service = 7
- **Expected Output**: Medium tip (~15-18%)
- **Reasoning**: Food is okay, service compensates slightly

### Test Case 4: Good Food, Average Service
- **Inputs**: Food = 7.5, Service = 5
- **Expected Output**: Medium-High tip (~17-20%)
- **Reasoning**: Good food but service could be better

---

## Implementation Details

### Libraries:
- **scikit-fuzzy** (skfuzzy): Python library for fuzzy logic
- **numpy**: Numerical operations
- **matplotlib**: Visualization

### Key Functions:
1. `fuzz.trimf()`: Create triangular membership function
2. `fuzz.interp_membership()`: Get membership value for input
3. `ctrl.Rule()`: Define fuzzy rules
4. `ctrl.ControlSystem()`: Create control system
5. `ctrl.ControlSystemSimulation()`: Run simulation

### Defuzzification Method:
- **Centroid**: Calculate center of mass of output membership function

---

## Expected Outputs

### Visualizations:
1. **Membership Functions Plot**
   - Food quality fuzzy sets
   - Service quality fuzzy sets
   - Tip percentage fuzzy sets

2. **Output Surface (3D)**
   - X-axis: Food quality (0-10)
   - Y-axis: Service quality (0-10)
   - Z-axis: Tip percentage (0-30%)
   - Shows how tip changes across all input combinations

3. **Test Results**
   - Input values
   - Membership degrees
   - Active rules
   - Final crisp output

---

## Advantages of This Fuzzy System

1. **Natural Language Rules**: Easy to understand and modify
2. **Smooth Transitions**: No sharp boundaries (unlike if-then logic)
3. **Human-like Reasoning**: Mimics how people actually decide tips
4. **Robust**: Handles uncertainty and imprecision well

---

## Possible Extensions

1. **Add more inputs**:
   - Wait time (0-60 minutes)
   - Atmosphere (0-10)
   - Price level (0-10)

2. **Add more membership functions**:
   - Very Poor, Poor, Fair, Good, Very Good, Excellent

3. **Non-linear membership functions**:
   - Gaussian, Trapezoidal, Sigmoid

4. **Adaptive rules**:
   - Learn from user feedback

---

## Summary

This fuzzy logic controller:
- Takes 2 inputs (food quality, service quality)
- Uses 9 fuzzy rules
- Outputs tip percentage
- Demonstrates human-like decision making
- Suitable for Dataset #22 requirements
