# Decision Informatics - Presentation Outline
## 15-Minute Presentation Structure

**Target Time:** 12-15 minutes + 3-5 minutes Q&A
**Total Slides:** 18 slides
**Speakers:** 2-3 people (distribute slides evenly)

---

## SLIDE 1: Title Slide (30 seconds)

**Content:**
- **Title:** Decision Informatics - Four Part Assignment
- **Subtitle:** Decision Trees • Naive Bayes • Genetic Algorithms • Fuzzy Logic
- **Names:** [Your names]
- **Album Numbers:** 103569, 103512
- **Date:** February 8, 2026
- **Institution:** Wyższa Szkoła Bankowa we Wrocławiu

**Speaker Notes:**
- Introduce yourself and teammates
- Brief overview: "Today we'll present our implementation of 4 AI algorithms"
- Mention grade target: 5.0

---

## SLIDE 2: Project Overview (45 seconds)

**Content:**
### Four Components Implemented:
1. **Decision Trees** - Heart disease classification
2. **Naive Bayes** - Email spam detection
3. **Genetic Algorithms** - Knapsack optimization
4. **Fuzzy Logic** - Restaurant tip calculator

**Technology Stack:**
- Python 3.12 + Jupyter Notebooks
- Libraries: scikit-learn, scikit-fuzzy, pandas, numpy
- 3.6 MB of tested, working code

**Speaker Notes:**
- Quick overview of what each part does
- Mention all code is tested and working
- "We've created 7 visualizations to show our results"

---

## SLIDE 3: Dataset Calculations (30 seconds)

**Content:**
### Required Dataset Calculations

**Our Album Numbers:**
- Student 1: 103569
- Student 2: 103512
- **Sum: 207081**

**Calculations:**
```
Genetic Algorithm Dataset:
1 + (207081 mod 15) = 1 + 6 = 7 ✓

Fuzzy Logic Dataset:
1 + (207081 mod 29) = 1 + 22 = 22 ✓
```

**Speaker Notes:**
- "As required, we calculated our specific datasets"
- "We used Dataset #7 for GA and Dataset #22 for Fuzzy Logic"

---

## SLIDE 4: Part 1 - Decision Trees Overview (1 minute)

**Content:**
### Heart Disease Classification

**Dataset:** UCI Machine Learning Repository
- **303 patients**, 13 clinical features
- Age, blood pressure, cholesterol, heart rate, etc.
- Binary target: Disease present or not

**Approach:**
- Comprehensive Exploratory Data Analysis
- CART algorithm with Gini impurity
- 80/20 train/test split
- Feature importance analysis

**Speaker Notes:**
- "We chose heart disease because it's a real medical problem"
- "Started with thorough EDA to understand the data"

---

## SLIDE 5: Part 1 - EDA Highlights (1 minute)

**Content:**
### Exploratory Data Analysis

**Key Findings:**
- **Balanced dataset:** 45.5% no disease, 54.5% disease
- **Age range:** 29-77 years (mean: 54)
- **Top correlations:**
  - Chest pain type strongly correlates with disease
  - Maximum heart rate negatively correlates
  - Age shows moderate positive correlation

**Data Quality:** ✓ No missing values

**Visual:** Show 2-3 small charts (correlation heatmap, age distribution)

**Speaker Notes:**
- "EDA revealed interesting clinical patterns"
- "Data quality was excellent - ready for modeling"

---

## SLIDE 6: Part 1 - Results & Tree Visualization (1.5 minutes)

**Content:**
### Decision Tree Results

**Performance:**
| Metric | Training | Testing |
|--------|----------|---------|
| Accuracy | 84.39% | **80.00%** |
| Precision | 0.85 | 0.82 |
| Recall | 0.83 | 0.78 |

**Top Features:**
1. Number of major vessels (24%)
2. Chest pain type (21%)
3. Maximum heart rate (16%)

**Visual:** Large tree visualization image

**Speaker Notes:**
- "Achieved solid 80% test accuracy"
- "Only 4% drop from training to test - good generalization"
- "Tree is interpretable - we can see decision rules"

---

## SLIDE 7: Part 2 - Naive Bayes Overview (1 minute)

**Content:**
### Email Spam Detection

**Custom Dataset Created:**
- 30 emails (15 ham, 15 spam)
- 5 features: money words, free offers, click requests, word count, urgency

**Two Implementations:**
1. **Manual Calculations** (Bayes' Theorem)
   - Calculated by hand for 3 examples
   - Documented all probabilities
2. **Python Implementation**
   - Three NB variants compared
   - Validated against manual calculations

**Speaker Notes:**
- "Created our own dataset as required"
- "Demonstrates understanding of Bayes' theorem"

---

## SLIDE 8: Part 2 - Manual Calculation Example (1.5 minutes)

**Content:**
### Manual Bayes' Theorem Calculation

**Example Email:** "FREE MONEY! Click here! URGENT offer!"

**Manual Calculation:**
```
Prior Probabilities:
  P(Ham) = 0.50    P(Spam) = 0.50

Likelihoods:
  P(features|Ham) = 0.133 × 0.067 × 0.200 × ... = 1.33×10⁻⁹
  P(features|Spam) = 0.867 × 0.800 × 0.933 × ... = 0.024

Posterior:
  P(Ham|features) = 0.13%
  P(Spam|features) = 99.87%

Prediction: SPAM ✓
```

**Speaker Notes:**
- "This shows we understand the math behind Naive Bayes"
- "Python implementation matched our manual calculations exactly"

---

## SLIDE 9: Part 2 - Python Results (1 minute)

**Content:**
### Python Implementation Results

**Three Models Tested:**

| Model | Training Acc | Testing Acc |
|-------|-------------|-------------|
| Bernoulli NB | 95.83% | **100%** ✓ |
| Gaussian NB | 100% | **100%** ✓ |
| Multinomial NB | 95.83% | **100%** ✓ |

**Cross-Validation:** 96.67% mean accuracy

**Key Insight:** Perfect test accuracy shows strong feature separation between ham and spam

**Speaker Notes:**
- "All three models achieved perfect 100% test accuracy"
- "Shows Naive Bayes is very effective for this problem"

---

## SLIDE 10: Part 3 - Genetic Algorithm Overview (1 minute)

**Content:**
### Knapsack Optimization (Dataset #7)

**Problem:**
- 20 items with varying weights and values
- Maximum capacity: 50 kg
- Goal: Maximize value without exceeding capacity

**Our GA Implementation:**
- **From scratch** (no GA libraries)
- Binary chromosome encoding
- Roulette wheel selection
- Single-point crossover (80%)
- Bit-flip mutation (10%)

**Parameters:** Pop size=10, 100 generations

**Speaker Notes:**
- "Classic NP-hard optimization problem"
- "We coded all genetic operators ourselves"

---

## SLIDE 11: Part 3 - Evolution Process (1.5 minutes)

**Content:**
### Fitness Evolution Over 100 Generations

**Visual:** Large fitness evolution plot

**Results:**
- **Initial fitness:** 260
- **Final fitness:** 280 (+7.7%)
- **Convergence:** Generation 17
- **Items selected:** 9 out of 20
- **Capacity utilization:** 96%

**Speaker Notes:**
- "You can see steady improvement over first 17 generations"
- "Solution stabilized - no improvement after Gen 17"
- "Achieved near-optimal solution efficiently"

---

## SLIDE 12: Part 3 - Best Solution Visualization (1 minute)

**Content:**
### Best Solution Found

**Visuals:**
- Best solution visualization (bar chart)
- Capacity utilization chart

**Key Metrics:**
- Total value: **280 points**
- Total weight: **48 kg** (within 50 kg limit)
- Efficiency: **96% capacity utilization**

**Comparison:**
- Brute force would require 1,048,576 evaluations
- GA found solution in ~1,000 evaluations

**Speaker Notes:**
- "GA was extremely efficient"
- "Found high-quality solution in just 17 generations"

---

## SLIDE 13: Part 4 - Fuzzy Logic Overview (1 minute)

**Content:**
### Restaurant Tip Calculator (Dataset #22)

**Problem:** Recommend fair tip based on dining experience

**System Design:**
- **Type:** Mamdani fuzzy inference
- **Inputs:** Food quality (0-10), Service quality (0-10)
- **Output:** Tip percentage (0-25%)
- **Defuzzification:** Centroid method

**Why Fuzzy Logic?**
- Models human reasoning naturally
- Handles linguistic terms ("poor", "excellent")
- No sharp boundaries

**Speaker Notes:**
- "Real-world application for restaurant payment apps"
- "Fuzzy logic perfect for subjective assessments"

---

## SLIDE 14: Part 4 - Membership Functions (1 minute)

**Content:**
### Fuzzy Sets Design

**Visual:** Membership functions plot (3 subplots)

**Input/Output Sets:**
- **Food Quality:** Poor, Average, Excellent
- **Service Quality:** Poor, Average, Excellent
- **Tip %:** Low (0-10%), Medium (10-20%), High (15-25%)

**Function Type:** Triangular (simple, interpretable)

**Speaker Notes:**
- "Three linguistic categories for each variable"
- "Overlapping regions allow smooth transitions"

---

## SLIDE 15: Part 4 - Fuzzy Rules & Results (1.5 minutes)

**Content:**
### 9 Fuzzy Rules + Test Results

**Rule Matrix:**
|  | Service: Poor | Average | Excellent |
|---|---|---|---|
| **Food: Poor** | Low | Low | Medium |
| **Food: Average** | Low | Medium | High |
| **Food: Excellent** | Medium | High | High |

**Test Examples:**
- Poor + Poor: **6.86%** tip (disappointing)
- Excellent + Excellent: **23.28%** tip (exceptional)
- Average + Good: **20.32%** tip (service compensates)

**Speaker Notes:**
- "9 rules cover all combinations"
- "Results make intuitive sense"

---

## SLIDE 16: Part 4 - 3D Surface Visualization (1 minute)

**Content:**
### Decision Surface

**Visuals:**
- 3D surface plot (main)
- 2D contour map (inset)

**Observations:**
- Smooth, continuous output
- No sudden jumps between categories
- Both inputs contribute to decision
- Output range: 6-24% (realistic)

**Speaker Notes:**
- "3D surface shows how tip varies with inputs"
- "Smooth surface = natural, human-like decisions"

---

## SLIDE 17: Summary & Achievements (1 minute)

**Content:**
### Project Achievements

**All 4 Components Complete:**
- ✅ **Decision Trees:** 80% accuracy, interpretable rules
- ✅ **Naive Bayes:** 100% accuracy, manual + Python
- ✅ **Genetic Algorithms:** Optimal solution, 96% utilization
- ✅ **Fuzzy Logic:** Complete design + implementation

**Deliverables:**
- 8 Jupyter notebooks (3.6 MB)
- 7 professional visualizations
- Complete documentation
- All code tested and working

**Speaker Notes:**
- "All requirements met for 5.0 grade"
- "Code is fully reproducible"

---

## SLIDE 18: Conclusions & Q&A (1 minute + Q&A)

**Content:**
### Key Takeaways

**Technical Skills Gained:**
- Python data science ecosystem mastery
- Algorithm implementation from scratch
- Data analysis and visualization

**Algorithm Insights:**
- DT: Interpretability vs accuracy tradeoff
- NB: Surprisingly effective despite "naive" assumption
- GA: Excellent for discrete optimization
- FL: Best for modeling human reasoning

**Future Work:**
- Ensemble methods, larger datasets
- Hybrid algorithms, real-world deployment

### Thank You! Questions?

**Speaker Notes:**
- "We learned a lot about AI algorithms"
- "Ready to answer your questions"

---

## PRESENTATION TIPS

### Timing Distribution:
- Introduction (Slides 1-3): 2 minutes
- Part 1 (Slides 4-6): 3.5 minutes
- Part 2 (Slides 7-9): 3.5 minutes
- Part 3 (Slides 10-12): 3.5 minutes
- Part 4 (Slides 13-16): 4.5 minutes
- Conclusion (Slides 17-18): 2 minutes
- **Total: 15 minutes**

### Speaker Distribution (3 people):
- **Speaker 1:** Slides 1-3, 4-6 (Intro + Decision Trees)
- **Speaker 2:** Slides 7-9, 10-12 (Naive Bayes + GA)
- **Speaker 3:** Slides 13-16, 17-18 (Fuzzy Logic + Conclusion)

### Delivery Tips:

**Visual Design:**
- Use your 7 PNG visualizations prominently
- Keep text minimal - speak more than you show
- Use consistent color scheme
- Large fonts (24pt+ for body text)

**Speaking:**
- Practice transitions between speakers
- Don't read slides - explain concepts
- Use pointer for graphs/charts
- Make eye contact with audience

**Technical Demos:**
- Have notebooks ready if asked to run code
- Or prepare screen recording as backup
- Show code snippets if time permits

**Q&A Preparation:**
- Review why you chose each algorithm
- Be ready to explain math behind methods
- Know limitations of your approaches
- Have ideas for improvements

### Common Questions to Prepare For:

1. "Why did you choose heart disease dataset?"
2. "How did you validate your Naive Bayes manual calculations?"
3. "Why did your GA converge so quickly?"
4. "How did you choose fuzzy membership functions?"
5. "What would you do differently next time?"
6. "How do these algorithms compare to deep learning?"
7. "Could you deploy these in production?"

---

## FILES NEEDED FOR PRESENTATION

**Images to Insert:**
1. `part1-decision-trees/tree_visualization.png`
2. `part3-genetic-algorithms/fitness_evolution.png`
3. `part3-genetic-algorithms/best_solution_visualization.png`
4. `part3-genetic-algorithms/capacity_utilization.png`
5. `part4-fuzzy-logic/membership_functions.png`
6. `part4-fuzzy-logic/output_surface.png`
7. `part4-fuzzy-logic/contour_map.png`

**Optional Materials:**
- Dataset calculation screenshot
- Confusion matrices
- Sample code snippets

---

## FINAL CHECKLIST

Before Presentation:
- [ ] All 18 slides created
- [ ] All 7 images inserted
- [ ] Speaker notes reviewed
- [ ] Timing practiced (under 15 minutes)
- [ ] Transitions smooth
- [ ] Q&A answers prepared
- [ ] Backup plan (screen recording or PDF)
- [ ] Laptop/projector tested

Good luck with your presentation! 🚀
