# Decision Informatics Project - Four Part Assignment

## Team Members
- Student 1: Album #103569
- Student 2: Album #103512

## Dataset Numbers
- **GA (Genetic Algorithms)**: Dataset #7
- **FL (Fuzzy Logic)**: Dataset #22
- Calculation: Sum = 207081

## Project Structure

```
.
├── part1-decision-trees/       # Decision Tree classification
│   ├── data/                   # Kaggle dataset
│   ├── DT_analysis.ipynb       # EDA and model implementation
│   └── tree_visualization.png  # Output visualizations
├── part2-naive-bayes/          # Naive Bayes Classifier
│   ├── data/                   # Custom dataset
│   ├── NBC_manual_calculations.xlsx
│   └── NBC_implementation.ipynb
├── part3-genetic-algorithms/   # Genetic Algorithms - Backpack Problem
│   ├── GA_excel_analysis.xlsx  # Manual 2 generations
│   ├── GA_implementation.ipynb # Python implementation
│   └── fitness_evolution.png   # Results visualization
├── part4-fuzzy-logic/          # Fuzzy Logic Controller
│   ├── FL_design_document.pdf  # Design documentation
│   ├── FL_implementation.ipynb # Python implementation
│   └── output_surface.png      # 3D surface plot
├── presentation/               # Final presentation slides
├── documentation/              # Final report
└── venv/                       # Python virtual environment

```

## Setup Instructions

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
python -c "import pandas, numpy, matplotlib, seaborn, sklearn, skfuzzy; print('All libraries OK!')"
```

### 3. Start Jupyter Notebook
```bash
jupyter notebook
```

## Installed Libraries

- pandas 3.0.0 - Data manipulation
- numpy 2.4.2 - Numerical operations
- matplotlib - Visualizations
- seaborn - Statistical visualizations
- scikit-learn 1.8.0 - Machine learning (DT, NBC)
- scikit-fuzzy - Fuzzy logic
- jupyter - Interactive notebooks

## Project Requirements (5.0 Grade)

### Part 1: Decision Trees
- [x] Find Kaggle classification dataset
- [ ] Perform comprehensive EDA
- [ ] Implement DecisionTreeClassifier
- [ ] Evaluate and visualize results

### Part 2: Naive Bayes Classifier
- [ ] Create/find own dataset (NOT subscribers)
- [ ] Manual calculations (2-3 samples)
- [ ] Python implementation
- [ ] Compare results

### Part 3: Genetic Algorithms
- [ ] Excel analysis (2 generations) - Dataset #7
- [ ] Python implementation from scratch
- [ ] Demonstrate convergence
- [ ] Plot fitness evolution

### Part 4: Fuzzy Logic
- [ ] Design fuzzy controller - Dataset #22
- [ ] Define membership functions and rules
- [ ] Python implementation (scikit-fuzzy)
- [ ] Test with 2+ sample inputs
- [ ] Visualize output surface

### Documentation & Presentation
- [ ] Comprehensive report (PDF)
- [ ] Presentation slides (15-20 slides)
- [ ] Practice presentation (10-15 min)
- [ ] Upload to Moodle

## Deadlines
- **First deadline**: 11.02.2026
- **Second deadline**: 18.02.2026

## Quick Start Commands

```bash
# Activate environment
source venv/bin/activate

# Start Jupyter
jupyter notebook

# Run a specific notebook
jupyter notebook part1-decision-trees/DT_analysis.ipynb
```

## Notes
- Remember to activate the virtual environment before working
- Save work frequently
- Document as you go
- Test all code before integration
