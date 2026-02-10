# Quick Start Guide

## How to Run the Project

### 1. Activate Virtual Environment

```bash
cd /home/atahan/Desktop/odevv
source venv/bin/activate
```

### 2. Start Jupyter Notebook

```bash
jupyter notebook
```

### 3. Run Each Part

Open and run each notebook in order:

#### Part 1: Decision Trees
```
Open: part1-decision-trees/DT_analysis.ipynb
Run: Cell → Run All
Expected time: 2-3 minutes
Outputs: tree_visualization.png
```

#### Part 2: Naive Bayes
```
Open: part2-naive-bayes/NBC_implementation.ipynb
Run: Cell → Run All
Expected time: 1-2 minutes
Outputs: Confusion matrix, comparison charts
```

#### Part 3: Genetic Algorithms
```
Open: part3-genetic-algorithms/GA_implementation.ipynb
Run: Cell → Run All
Expected time: 3-5 minutes (100 generations)
Outputs: fitness_evolution.png, best_solution_visualization.png
```

#### Part 4: Fuzzy Logic
```
Open: part4-fuzzy-logic/FL_implementation.ipynb
Run: Cell → Run All
Expected time: 5-10 minutes (3D surface generation)
Outputs: membership_functions.png, output_surface.png, contour_map.png
```

## Expected Outputs

After running all notebooks, you should have:

### Visualizations Generated:
- `part1-decision-trees/tree_visualization.png`
- `part3-genetic-algorithms/fitness_evolution.png`
- `part3-genetic-algorithms/best_solution_visualization.png`
- `part3-genetic-algorithms/capacity_utilization.png`
- `part4-fuzzy-logic/membership_functions.png`
- `part4-fuzzy-logic/output_surface.png`
- `part4-fuzzy-logic/contour_map.png`

### Results Summary:
- **Part 1 DT**: ~80-85% accuracy on heart disease prediction
- **Part 2 NBC**: ~95%+ accuracy on spam detection
- **Part 3 GA**: Optimal knapsack solution found within 100 generations
- **Part 4 FL**: Smooth tip calculation across all input ranges

## Troubleshooting

### If Jupyter won't start:
```bash
pip install --upgrade jupyter
```

### If libraries are missing:
```bash
pip install pandas numpy matplotlib seaborn scikit-learn scikit-fuzzy
```

### If notebook crashes:
- Reduce number of generations in GA (line: NUM_GENERATIONS = 50)
- Reduce surface resolution in FL (line: np.arange(0, 11, 1.0))

## Next Steps After Running

1. ✅ Verify all visualizations were generated
2. ✅ Check notebook outputs for any errors
3. ✅ Save all generated PNG files
4. ✅ Review results for presentation
5. ✅ Compile into final documentation

## Quick Commands Reference

```bash
# Activate environment
source venv/bin/activate

# List all notebooks
find . -name "*.ipynb"

# Run notebook from command line (alternative)
jupyter nbconvert --to notebook --execute part1-decision-trees/DT_analysis.ipynb

# Deactivate environment when done
deactivate
```

## Contact / Help

If you encounter issues:
1. Check Python version: `python --version` (should be 3.8+)
2. Check installed packages: `pip list`
3. Review error messages in notebook cells
4. Check system resources (RAM for large datasets)

---

**Estimated Total Runtime**: 15-20 minutes for all 4 notebooks

**System Requirements**:
- Python 3.8+
- 4GB RAM minimum
- ~500MB disk space
