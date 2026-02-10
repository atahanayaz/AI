# Genetic Algorithms - Backpack Problem
## Dataset #7

**Students:** Album #103569, #103512
**Dataset Number:** 7 (calculated from: 1 + (207081 mod 15) = 7)

---

## Problem Description

The knapsack/backpack problem is a classic optimization problem:
- Given a set of items, each with a weight and value
- Find the combination of items that maximizes total value
- While staying within the weight capacity constraint

---

## Dataset #7 Parameters (VERIFIED - Real Data from Excel)

**Source:** problem_plecakowy_zestawy - ANG.xlsx
**Extracted:** 2026-02-10
**Verified:** ✓ ACTUAL Dataset #7

### Items (Real Data from Excel file):
- **Maximum Capacity**: 53 kg

| Item | Weight (kg) | Value ($) |
|------|-------------|-----------|
| 1    | 3           | 5         |
| 2    | 12          | 9         |
| 3    | 8           | 1         |
| 4    | 11          | 14        |
| 5    | 10          | 8         |
| 6    | 7           | 12        |
| 7    | 6           | 5         |
| 8    | 2           | 6         |
| 9    | 14          | 3         |
| 10   | 2           | 7         |

**Total if all items selected:**
- Total Weight: 75 kg (exceeds capacity!)
- Total Value: $70
- Optimization required: ✓

---

## Genetic Algorithm Approach

### Chromosome Representation:
- Binary string: [1, 0, 1, 0, 1, 0, 1, 0]
- 1 = item included, 0 = item excluded
- Length = number of items (8 in this example)

### Fitness Function:
```
IF total_weight <= capacity:
    fitness = total_value
ELSE:
    fitness = 0 (invalid solution)
```

### Genetic Operators:

1. **Selection**: Roulette Wheel
   - Probability of selection proportional to fitness

2. **Crossover**: Single-Point
   - Cut at random point and swap tails

3. **Mutation**: Bit Flip
   - Random bit flip with small probability (e.g., 0.1)

---

## Excel Analysis Structure

The Excel file will show:

### Generation 0 (Initial Population):
- Random chromosomes
- Calculate weight and value for each
- Calculate fitness
- Select parents

### Generation 1:
- Apply crossover
- Apply mutation
- Calculate new fitness values

### Generation 2:
- Repeat process
- Show evolution of best solution

---

## Expected Output

- Best chromosome found
- Maximum value achieved
- Total weight of selected items
- Items included in solution
- Evolution of fitness over generations
