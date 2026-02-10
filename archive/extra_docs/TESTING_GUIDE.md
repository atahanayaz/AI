# Testing & Running Guide

## ✅ Pre-Check Complete

All notebooks validated:
- ✓ Part 1: Decision Trees - Valid
- ✓ Part 2: Naive Bayes - Valid
- ✓ Part 3: Genetic Algorithms - Valid
- ✓ Part 4: Fuzzy Logic - Valid

All libraries installed:
- ✓ pandas, numpy, matplotlib, seaborn
- ✓ scikit-learn, scikit-fuzzy
- ✓ jupyter

---

## Option 1: Run Interactively (Recommended)

### Step 1: Start Jupyter
```bash
cd /home/atahan/Desktop/odevv
source venv/bin/activate
jupyter notebook
```

### Step 2: Open Each Notebook

**Part 1: Decision Trees** (~2-3 min)
1. Navigate to `part1-decision-trees/`
2. Open `DT_analysis.ipynb`
3. Click: **Kernel → Restart & Run All**
4. Wait for completion
5. Verify tree visualization appears at the end
6. File → Save

**Part 2: Naive Bayes** (~1-2 min)
1. Navigate to `part2-naive-bayes/`
2. Open `NBC_implementation.ipynb`
3. Click: **Kernel → Restart & Run All**
4. Verify all 3 NB models run successfully
5. File → Save

**Part 3: Genetic Algorithms** (~3-5 min)
1. Navigate to `part3-genetic-algorithms/`
2. Open `GA_implementation.ipynb`
3. Click: **Kernel → Restart & Run All**
4. Watch fitness evolution over 100 generations
5. Verify plots appear
6. File → Save

**Part 4: Fuzzy Logic** (~5-10 min)
1. Navigate to `part4-fuzzy-logic/`
2. Open `FL_implementation.ipynb`
3. Click: **Kernel → Restart & Run All**
4. Wait for 3D surface generation (takes longest)
5. Verify all visualizations appear
6. File → Save

---

## Option 2: Run Automatically

### Quick Test (All at Once)
```bash
cd /home/atahan/Desktop/odevv
./RUN_ALL.sh
```

This will run all 4 notebooks automatically and report success/failure.

**Estimated total time**: 15-20 minutes

---

## Option 3: Run Individual Parts

### Part 1 Only
```bash
source venv/bin/activate
jupyter nbconvert --to notebook --execute \
    --output DT_analysis_output.ipynb \
    part1-decision-trees/DT_analysis.ipynb
```

### Part 2 Only
```bash
source venv/bin/activate
jupyter nbconvert --to notebook --execute \
    --output NBC_implementation_output.ipynb \
    part2-naive-bayes/NBC_implementation.ipynb
```

### Part 3 Only
```bash
source venv/bin/activate
jupyter nbconvert --to notebook --execute \
    --output GA_implementation_output.ipynb \
    part3-genetic-algorithms/GA_implementation.ipynb
```

### Part 4 Only
```bash
source venv/bin/activate
jupyter nbconvert --to notebook --execute \
    --output FL_implementation_output.ipynb \
    part4-fuzzy-logic/FL_implementation.ipynb
```

---

## Expected Outputs After Running

### Visualizations Generated:

**Part 1:**
- `part1-decision-trees/tree_visualization.png`

**Part 3:**
- `part3-genetic-algorithms/fitness_evolution.png`
- `part3-genetic-algorithms/best_solution_visualization.png`
- `part3-genetic-algorithms/capacity_utilization.png`

**Part 4:**
- `part4-fuzzy-logic/membership_functions.png`
- `part4-fuzzy-logic/output_surface.png`
- `part4-fuzzy-logic/contour_map.png`

### Console Outputs:

**Part 1:**
- Dataset shape and info
- EDA statistics and plots
- Model accuracy (~80-85%)
- Confusion matrix
- Feature importance

**Part 2:**
- Manual calculations verification
- 3 Naive Bayes model comparisons
- Test case predictions
- Cross-validation scores

**Part 3:**
- Generation 0, 1, 2 details
- Best solution found
- Fitness evolution
- Capacity utilization

**Part 4:**
- Membership function plots
- 4 test cases with results
- Detailed inference process
- 3D surface and contour maps

---

## Verification Checklist

After running, verify:

- [ ] All cells executed without errors
- [ ] All plots/visualizations appear
- [ ] PNG files were created
- [ ] Results make sense:
  - [ ] DT accuracy 75-90%
  - [ ] NBC accuracy 90%+
  - [ ] GA found valid solution (weight ≤ 50kg)
  - [ ] FL tips range 5-25%

---

## Troubleshooting

### Kernel Crashes
**Issue**: Notebook kernel dies during execution

**Solutions**:
1. Reduce generations in GA: `NUM_GENERATIONS = 50`
2. Reduce FL surface resolution: `np.arange(0, 11, 1.0)`
3. Restart kernel and run cells one-by-one

### Out of Memory
**Issue**: System runs out of RAM

**Solutions**:
1. Close other applications
2. Run notebooks one at a time (not all at once)
3. Reduce population size in GA: `POPULATION_SIZE = 5`

### Module Not Found
**Issue**: `ModuleNotFoundError: No module named 'X'`

**Solution**:
```bash
source venv/bin/activate
pip install X
```

### Plots Don't Show
**Issue**: Visualizations don't appear

**Solution**:
Add at the top of notebook:
```python
%matplotlib inline
```

---

## Quick Commands Reference

```bash
# Activate environment
source venv/bin/activate

# Start Jupyter
jupyter notebook

# Check if notebooks are valid
jupyter nbconvert --to notebook --execute --dry-run NOTEBOOK.ipynb

# List all generated images
find . -name "*.png" | grep -E "(part1|part2|part3|part4)"

# Deactivate when done
deactivate
```

---

## Next Steps After Testing

1. ✅ Verify all outputs look correct
2. ✅ Save all PNG visualizations
3. ✅ Take screenshots of key results
4. ✅ Compile into final documentation
5. ✅ Create presentation slides
6. ✅ Prepare for submission

---

## Recommended Testing Order

**Today:**
1. Run Part 1 (Decision Trees) - verify it works
2. Run Part 2 (Naive Bayes) - quickest one

**Next:**
3. Run Part 3 (Genetic Algorithms) - watch evolution
4. Run Part 4 (Fuzzy Logic) - most visualizations

**Why this order?**
- Starts with easier notebooks
- Builds confidence
- Saves longest (FL) for when you have time to watch

---

## Estimated Runtimes

- **Part 1**: 2-3 minutes
- **Part 2**: 1-2 minutes
- **Part 3**: 3-5 minutes
- **Part 4**: 5-10 minutes (3D surface generation)

**Total**: ~15-20 minutes for all 4

---

**Status**: Ready to Run! 🚀
