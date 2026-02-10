# Decision Informatics Project - Four Part Assignment

**Grade Target: 5.0 / 5.0** ⭐⭐⭐⭐⭐
**Status: ✅ COMPLETE - Ready for Submission**

---

## 👥 Team Members

- **Atahan Ayaz** - Album #103512
- **Dogukan Demiroz** - Album #103569

---

## 📊 Dataset Calculations

```
Sum of album numbers: 103512 + 103569 = 207,081

Genetic Algorithms: 1 + (207,081 mod 15) = 7 → Dataset #7
Fuzzy Logic:        1 + (207,081 mod 29) = 22 → Dataset #22
```

---

## 📁 Project Structure

```
decision-informatics/
├── part1-decision-trees/
│   ├── data/
│   │   └── heart_disease.csv              # UCI Heart Disease dataset (303 samples)
│   ├── DT_analysis.ipynb                  # Main implementation & EDA
│   ├── DT_test_output.ipynb               # Executed output
│   └── tree_visualization.png             # Decision tree visualization (613 KB)
│
├── part2-naive-bayes/
│   ├── data/
│   │   └── email_spam_dataset.csv         # Custom dataset (30 samples)
│   ├── NBC_implementation.ipynb           # Python implementation (3 variants)
│   ├── NBC_test_output.ipynb              # Executed output
│   └── NBC_manual_calculations.md         # Manual calculations (3 examples)
│
├── part3-genetic-algorithms/
│   ├── GA_implementation.ipynb            # From-scratch implementation
│   ├── GA_test_output.ipynb               # Executed output
│   ├── GA_dataset7_info.md                # Dataset #7 documentation
│   ├── fitness_evolution.png              # Fitness over 100 generations (298 KB)
│   ├── best_solution_visualization.png    # Best solution found (185 KB)
│   └── capacity_utilization.png           # Capacity usage chart (107 KB)
│
├── part4-fuzzy-logic/
│   ├── FL_implementation.ipynb            # Tip calculator implementation
│   ├── FL_final_output.ipynb              # Executed output
│   ├── FL_design_document.md              # Problem design & rules
│   ├── membership_functions.png           # Fuzzy sets visualization (230 KB)
│   ├── output_surface.png                 # 3D surface plot (803 KB)
│   └── contour_map.png                    # 2D contour map (408 KB)
│
├── documentation/
│   ├── FINAL_REPORT.pdf                   # Complete report (2.8 MB, 41 pages)
│   └── FINAL_REPORT.md                    # Markdown source
│
├── presentation/
│   └── Decision_Informatics_Presentation.html  # 18-slide presentation
│
├── problem_plecakowy_zestawy - ANG.xlsx   # Dataset #7 source (CRITICAL!)
├── dataset_calculations.txt               # Dataset number calculations
├── README.md                              # This file
└── venv/                                  # Python virtual environment
```

---

## 🎯 Project Summary

### Part 1: Decision Trees ✅
- **Dataset**: UCI Heart Disease (303 samples, 13 features)
- **Implementation**: DecisionTreeClassifier with max_depth=3
- **Results**: 80% test accuracy, ~85% training accuracy
- **EDA**: 20+ visualizations (distributions, correlations, box plots)
- **Deliverables**: Tree visualization, feature importance analysis

### Part 2: Naive Bayes Classifier ✅
- **Dataset**: Custom Email Spam (30 samples, 5 features)
- **Manual Calculations**: 3 test cases calculated by hand
- **Implementation**: 3 variants (BernoulliNB, GaussianNB, MultinomialNB)
- **Results**: 100% accuracy, perfect classification
- **Deliverables**: Manual calculations document, comparison analysis

### Part 3: Genetic Algorithms ✅
- **Dataset**: Real Dataset #7 from Excel (10 items, 53 kg capacity)
- **Implementation**: From scratch (no GA libraries used)
- **Parameters**: Population=10, Generations=100, Mutation=0.1, Crossover=0.8
- **Results**: Fitness=66, 100% capacity utilization, convergence at Gen 27
- **Deliverables**: 3 visualizations, Excel-style analysis (3 generations shown)

### Part 4: Fuzzy Logic ✅
- **Dataset**: #22 - Restaurant Tip Calculator
- **Inputs**: Food Quality (0-10), Service Quality (0-10)
- **Output**: Tip Percentage (0-30%)
- **Design**: 3 fuzzy sets per variable, 9 rules (3×3 matrix)
- **Membership Functions**: Triangular
- **Results**: Smooth control surface, 4 test cases validated
- **Deliverables**: 3 visualizations (membership functions, 3D surface, contour map)

---

## 🚀 Quick Start

### 1. Activate Virtual Environment

**Linux/Mac:**
```bash
source venv/bin/activate
```

**Windows:**
```bash
venv\Scripts\activate
```

### 2. Verify Installation
```bash
python -c "import pandas, numpy, matplotlib, seaborn, sklearn, skfuzzy; print('✓ All libraries OK!')"
```

### 3. Start Jupyter Notebook
```bash
jupyter notebook
```

### 4. Run Notebooks
```bash
# Decision Trees
jupyter notebook part1-decision-trees/DT_analysis.ipynb

# Naive Bayes
jupyter notebook part2-naive-bayes/NBC_implementation.ipynb

# Genetic Algorithms
jupyter notebook part3-genetic-algorithms/GA_implementation.ipynb

# Fuzzy Logic
jupyter notebook part4-fuzzy-logic/FL_implementation.ipynb
```

---

## 📦 Required Libraries

All libraries are already installed in `venv/`:

- **pandas** 3.0.0 - Data manipulation
- **numpy** 2.4.2 - Numerical operations
- **matplotlib** - Visualizations
- **seaborn** - Statistical visualizations
- **scikit-learn** 1.8.0 - Machine learning (DT, NBC)
- **scikit-fuzzy** - Fuzzy logic controller
- **jupyter** - Interactive notebooks
- **openpyxl** - Excel file reading

---

## ✅ Completion Checklist

### Part 1: Decision Trees
- [x] Real dataset from Kaggle/UCI (NOT Titanic)
- [x] Comprehensive EDA with 20+ visualizations
- [x] DecisionTreeClassifier implemented
- [x] Model evaluated and analyzed
- [x] Tree visualization generated

### Part 2: Naive Bayes Classifier
- [x] Own dataset created (NOT subscribers example)
- [x] Manual calculations for 3 samples
- [x] Python implementation (3 variants)
- [x] Results compared and validated

### Part 3: Genetic Algorithms
- [x] Dataset #7 verified and used
- [x] Excel-style analysis (3 generations shown)
- [x] Python implementation from scratch
- [x] 100 generations demonstrated
- [x] Evolution visualized (3 plots)

### Part 4: Fuzzy Logic
- [x] Dataset #22 - Tip calculator designed
- [x] Problem described in human language
- [x] Fuzzy sets and membership functions defined
- [x] 9 fuzzy rules implemented
- [x] Python implementation (scikit-fuzzy)
- [x] 4 sample inputs tested
- [x] Output visualized (3 plots)

### Documentation & Presentation
- [x] Complete report (41 pages, PDF format)
- [x] Presentation slides (18 slides, HTML)
- [x] Names and album numbers included
- [x] Dataset calculations documented
- [x] All 7 visualizations embedded

---

## 📄 Submission Files

### Required for Submission:
1. **Code** (4 Jupyter notebooks)
2. **Datasets** (2 CSV files + Dataset #7 Excel)
3. **Visualizations** (7 PNG images)
4. **Report** (documentation/FINAL_REPORT.pdf)
5. **Presentation** (presentation/Decision_Informatics_Presentation.html)
6. **Support files** (README.md, dataset_calculations.txt)

**Total size:** ~15 MB (including all files)

---

## 📅 Deadlines

- **First deadline**: 11.02.2026
- **Second deadline**: 18.02.2026

---

## 🎓 Grade Requirements Met

All requirements for **Grade 5.0** have been met:

✅ Decision Trees: Real dataset (not Titanic), comprehensive analysis
✅ Naive Bayes: Own dataset (not subscribers), manual + Python
✅ Genetic Algorithms: Real Dataset #7, from-scratch implementation
✅ Fuzzy Logic: Dataset #22, full implementation with testing
✅ Documentation: Complete report with all visualizations
✅ Presentation: 18 professional slides ready to present

**Project Status: 100% Complete** 🎉

---

## 📞 Contact

- Atahan Ayaz - Album #103512
- Dogukan Demiroz - Album #103569

**Repository**: https://github.com/atahanayaz/decision-informatics

---

## 📝 Notes

- All notebooks have been executed and tested
- All results are reproducible
- All visualizations are high quality (300 DPI)
- Dataset #7 verified against original Excel file
- Manual calculations verified against Python results
- No plagiarism - all code written from scratch where required

**Ready for submission and presentation!** ✅
