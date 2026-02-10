# 🎯 STEP-BY-STEP FIX PLAN
## Complete Guide to Fix All Issues Before Deadline

**Created:** 2026-02-10
**Deadline:** 2026-02-11 (tomorrow) or 2026-02-18
**Estimated Time:** 4-5 hours
**Current Status:** 70% ready → Target: 100% ready

---

## 📋 SESSION 1: FIX CRITICAL GA DATASET (1.5-2 hours)

### STEP 1: Install Missing Excel Library (5 minutes)

```bash
cd /home/atahan/Desktop/odevv
source venv/bin/activate
pip install openpyxl
```

**Verify installation:**
```bash
python -c "import openpyxl; print('openpyxl installed successfully!')"
```

---

### STEP 2: Extract Real Dataset #7 (15 minutes)

**Open Python to read the Excel file:**

```bash
source venv/bin/activate
python3
```

**In Python, run this code:**

```python
import pandas as pd

# Load Excel file
excel_file = 'problem_plecakowy_zestawy - ANG.xlsx'
xl = pd.ExcelFile(excel_file)

# Show all sheet names
print("Available sheets:")
for i, sheet in enumerate(xl.sheet_names):
    print(f"{i}: {sheet}")

# Try reading the first sheet to see structure
df = pd.read_excel(excel_file, sheet_name=0)
print("\nFirst sheet preview:")
print(df.head(20))

# Look for Dataset #7 (might be row 7 or column 7)
print("\nSearching for Dataset 7...")
print(df)
```

**What to look for:**
- Row labeled "7" or "Dataset 7"
- Columns showing: Item number, Weight, Value
- A capacity value (max weight allowed)

**Write down the data:**
```
Dataset #7:
- Capacity: ___ kg
- Item 1: Weight=___ kg, Value=$___
- Item 2: Weight=___ kg, Value=$___
- ... (continue for all items)
```

**Exit Python:**
```python
exit()
```

---

### STEP 3: Update GA Notebook with Real Data (30 minutes)

**Open the notebook:**
```bash
jupyter notebook part3-genetic-algorithms/GA_implementation.ipynb
```

**Find this section (around cell 3):**
```python
# Dataset #7 - Backpack Problem
# Note: Adjust these values based on actual Excel file for dataset #7

# Items: (weight, value)
items = [
    (10, 60),   # Item 1
    (20, 100),  # Item 2
    # ... etc
]

MAX_CAPACITY = 50
```

**Replace with your real data from Step 2:**
```python
# Dataset #7 - Backpack Problem (REAL DATA from Excel)

# Items: (weight, value) - EXTRACTED FROM problem_plecakowy_zestawy - ANG.xlsx
items = [
    (__, __),   # Item 1 - use your real values
    (__, __),   # Item 2
    (__, __),   # Item 3
    # ... add all items from Dataset #7
]

MAX_CAPACITY = __  # Use real capacity from Excel
```

**Update the print statement:**
```python
print(f"Number of items: {len(items)}")
print(f"Maximum capacity: {MAX_CAPACITY} kg")
print(f"\nItems (Weight, Value):")
for i, (w, v) in enumerate(items, 1):
    print(f"  Item {i}: Weight={w} kg, Value=${v}")
```

**IMPORTANT:** Also update the comment on line 63 to:
```python
# Dataset #7 - Backpack Problem (Real data from Excel - VERIFIED)
```

---

### STEP 4: Re-run Entire GA Notebook (30 minutes)

**In Jupyter:**
1. Click **Kernel** → **Restart & Clear Output**
2. Click **Cell** → **Run All**
3. Wait for all cells to execute (~2-3 minutes)
4. **Watch for errors!**

**Check the outputs:**
- [ ] All cells executed without errors
- [ ] New fitness value displayed (will be DIFFERENT from 280)
- [ ] New selected items make sense
- [ ] All 3 PNG files generated:
  - `fitness_evolution.png`
  - `best_solution_visualization.png`
  - `capacity_utilization.png`

**Verify visualizations:**
```bash
ls -lh part3-genetic-algorithms/*.png
```

You should see 3 PNG files with today's timestamp.

---

### STEP 5: Document the Real Dataset #7 (15 minutes)

**Update the info file:**
```bash
nano part3-genetic-algorithms/GA_dataset7_info.md
```

**Replace the "Example" section with real data:**
```markdown
## Dataset #7 Parameters (VERIFIED FROM EXCEL)

**Source:** problem_plecakowy_zestawy - ANG.xlsx

### Problem Data:
- **Maximum Capacity**: [your real capacity] kg

| Item | Weight (kg) | Value ($) |
|------|-------------|-----------|
| 1    | [real]      | [real]    |
| 2    | [real]      | [real]    |
| 3    | [real]      | [real]    |
... (add all items)

**Note:** This is the ACTUAL Dataset #7 as assigned, extracted from the Excel file.
```

**Save:** Ctrl+O, Enter, Ctrl+X

---

### STEP 6: Update FINAL_REPORT.md with New GA Results (20 minutes)

**Open report:**
```bash
nano documentation/FINAL_REPORT.md
```

**Find the GA section (around line 400-500)** and update:

1. **Best fitness value** (search for "fitness 280" or similar)
2. **Selected items** (update the list of which items were chosen)
3. **Total weight** (new weight of selected items)
4. **Total value** (new value = fitness)
5. **Capacity utilization** (new percentage)

**Find lines like:**
```markdown
**Best Solution:**
- Fitness: 280
- Items selected: [1, 2, 5, 7]
- Total weight: 48 kg
- Total value: $280
```

**Replace with your NEW results from the notebook output.**

---

## 📋 SESSION 2: FIX DOCUMENTATION (1 hour)

### STEP 7: Add Student Names to Report (2 minutes)

**Still in documentation/FINAL_REPORT.md:**

Find lines 7-8:
```markdown
**Students:**
- [Your Name 1]
- [Your Name 2]
```

Replace with actual names:
```markdown
**Students:**
- [Student 1 Full Name] (Album #103569)
- [Student 2 Full Name] (Album #103512)
```

**Save:** Ctrl+O, Enter, Ctrl+X

---

### STEP 8: Create Quick Reference Sheet (10 minutes)

**Create a summary with your REAL results:**

```bash
nano documentation/FINAL_RESULTS_SUMMARY.md
```

**Add this content:**
```markdown
# Final Results Summary - Quick Reference

## Dataset Calculations
- Album numbers: 103569 + 103512 = 207081
- GA Dataset: #7 ✓
- FL Dataset: #22 ✓

## Part 1: Decision Trees (Heart Disease)
- Dataset: UCI Heart Disease (303 samples)
- Training Accuracy: [check notebook]
- Testing Accuracy: [check notebook]
- Visualization: tree_visualization.png (613 KB)

## Part 2: Naive Bayes (Email Spam)
- Dataset: Custom (30 samples)
- Bernoulli NB Accuracy: [check notebook]
- Gaussian NB Accuracy: [check notebook]
- Manual calculations: 3 test cases ✓

## Part 3: Genetic Algorithms (Knapsack #7)
- Dataset: #7 (VERIFIED from Excel) ✓
- Population size: 10
- Generations: 100
- **Best fitness: [YOUR NEW VALUE]**
- **Selected items: [YOUR NEW ITEMS]**
- **Total weight: [YOUR NEW WEIGHT] kg**
- **Capacity utilization: [YOUR NEW %]**
- Visualizations: 3 PNG files (652 KB total)

## Part 4: Fuzzy Logic (Tip Calculator #22)
- Dataset: #22 ✓
- Inputs: Food quality (0-10), Service quality (0-10)
- Output: Tip percentage (0-30%)
- Fuzzy rules: 9 rules (3x3 matrix)
- Test cases: 4 scenarios
- Visualizations: 3 PNG files (1.4 MB total)

## All Visualizations (7 total)
1. tree_visualization.png (Part 1)
2. fitness_evolution.png (Part 3)
3. best_solution_visualization.png (Part 3)
4. capacity_utilization.png (Part 3)
5. membership_functions.png (Part 4)
6. output_surface.png (Part 4)
7. contour_map.png (Part 4)
```

**Fill in the bracketed values** from your notebook outputs.

**Save:** Ctrl+O, Enter, Ctrl+X

---

## 📋 SESSION 3: CREATE PRESENTATION (2 hours)

### STEP 9: Choose Presentation Software (5 minutes)

**Option A: Google Slides (Recommended - Easy)**
1. Go to https://slides.google.com
2. Click "+ Blank presentation"
3. Title: "Decision Informatics - Four Part Assignment"

**Option B: LibreOffice Impress (Free, Offline)**
```bash
libreoffice --impress &
```
Create new presentation.

**Option C: Microsoft PowerPoint**
If you have access to PowerPoint, use it.

---

### STEP 10: Create 18 Slides (1.5 hours)

**Use this structure** (from PRESENTATION_OUTLINE.md):

#### Slide 1: Title
- Title: "Decision Informatics - Four Part Assignment"
- Student names and album numbers
- Date: February 2026
- School logo (if available)

#### Slide 2: Overview
- Title: "Project Overview"
- 4 bullet points:
  - Part 1: Decision Trees
  - Part 2: Naive Bayes Classifier
  - Part 3: Genetic Algorithms
  - Part 4: Fuzzy Logic

#### Slide 3: Dataset Calculations
- Title: "Dataset Assignments"
- Show calculation:
  - Album numbers: 103569 + 103512 = 207081
  - GA: 1 + (207081 mod 15) = **7**
  - FL: 1 + (207081 mod 29) = **22**

#### Slide 4: Part 1 Title
- Title: "Part 1: Decision Trees"
- Subtitle: "Heart Disease Classification"

#### Slide 5: Part 1 Results
- Dataset: UCI Heart Disease (303 samples)
- Accuracy results
- **INSERT IMAGE:** `part1-decision-trees/tree_visualization.png`

#### Slide 6: Part 2 Title
- Title: "Part 2: Naive Bayes Classifier"
- Subtitle: "Email Spam Detection"

#### Slide 7: Part 2 Results
- Custom dataset (30 emails)
- Manual calculations shown
- 3 NB variants tested
- High accuracy achieved

#### Slide 8: Part 3 Title
- Title: "Part 3: Genetic Algorithms"
- Subtitle: "Knapsack Optimization - Dataset #7"

#### Slide 9: Part 3 Evolution
- **INSERT IMAGE:** `part3-genetic-algorithms/fitness_evolution.png`
- Note: "100 generations, from-scratch implementation"

#### Slide 10: Part 3 Best Solution
- **INSERT IMAGE:** `part3-genetic-algorithms/best_solution_visualization.png`
- Show your NEW fitness value and selected items

#### Slide 11: Part 3 Capacity
- **INSERT IMAGE:** `part3-genetic-algorithms/capacity_utilization.png`

#### Slide 12: Part 4 Title
- Title: "Part 4: Fuzzy Logic"
- Subtitle: "Restaurant Tip Calculator - Dataset #22"

#### Slide 13: Part 4 Problem
- Inputs: Food Quality (0-10), Service Quality (0-10)
- Output: Tip Percentage (0-30%)
- 9 fuzzy rules (3×3 matrix)

#### Slide 14: Part 4 Membership Functions
- **INSERT IMAGE:** `part4-fuzzy-logic/membership_functions.png`

#### Slide 15: Part 4 Output Surface
- **INSERT IMAGE:** `part4-fuzzy-logic/output_surface.png`

#### Slide 16: Part 4 Contour Map
- **INSERT IMAGE:** `part4-fuzzy-logic/contour_map.png`

#### Slide 17: Summary
- All 4 parts completed successfully
- From-scratch implementations
- Real datasets used (not examples)
- Comprehensive analysis and visualization

#### Slide 18: Thank You
- "Thank you for your attention!"
- "Questions?"
- Contact info (optional)

---

### STEP 11: Format Slides (20 minutes)

**Design tips:**
- Use large fonts (24pt minimum, 32pt for titles)
- Keep text minimal (6 lines max per slide)
- Use high-contrast colors (dark text on light background)
- Make images LARGE (fill most of the slide)
- Use consistent formatting

**Insert images:**
- In Google Slides: Insert → Image → Upload from computer
- In LibreOffice: Insert → Image → From File

---

### STEP 12: Save Presentation (5 minutes)

**Google Slides:**
- File → Download → Microsoft PowerPoint (.pptx)
- Save as: `Decision_Informatics_Presentation.pptx`

**LibreOffice:**
- File → Save As
- Choose format: Microsoft PowerPoint (.pptx)
- Save to: `/home/atahan/Desktop/odevv/documentation/`

**Also save as PDF backup:**
- File → Download → PDF (Google Slides)
- File → Export as PDF (LibreOffice)

---

## 📋 SESSION 4: CONVERT REPORT TO PDF (30 minutes)

### STEP 13: Convert Markdown to PDF (30 minutes)

**Option A: Using Pandoc (Recommended)**

```bash
cd /home/atahan/Desktop/odevv/documentation

# Install pandoc if needed
sudo apt install pandoc texlive-xetex -y

# Convert to PDF
pandoc FINAL_REPORT.md -o FINAL_REPORT.pdf --pdf-engine=xelatex

# Check if it worked
ls -lh FINAL_REPORT.pdf
```

**If images don't show:** You'll need to manually insert them (see Option B).

---

**Option B: Copy to LibreOffice Writer (Manual but reliable)**

1. **Open the markdown file:**
```bash
gedit documentation/FINAL_REPORT.md
```

2. **Select All (Ctrl+A) and Copy (Ctrl+C)**

3. **Open LibreOffice Writer:**
```bash
libreoffice --writer &
```

4. **Paste (Ctrl+V)** - formatting will be basic

5. **Format the document:**
   - Select title lines, make them "Heading 1" or "Heading 2"
   - Format tables (use Table → Insert Table if needed)

6. **Insert the 7 images manually:**
   - Find where it says "[INSERT IMAGE: ...]"
   - Delete that text
   - Insert → Image → From File
   - Navigate to the PNG file
   - Resize image to fit page width

7. **Images to insert:**
   - Part 1: `part1-decision-trees/tree_visualization.png`
   - Part 3: `part3-genetic-algorithms/fitness_evolution.png`
   - Part 3: `part3-genetic-algorithms/best_solution_visualization.png`
   - Part 3: `part3-genetic-algorithms/capacity_utilization.png`
   - Part 4: `part4-fuzzy-logic/membership_functions.png`
   - Part 4: `part4-fuzzy-logic/output_surface.png`
   - Part 4: `part4-fuzzy-logic/contour_map.png`

8. **Add page numbers:**
   - Insert → Header and Footer → Footer
   - Insert → Field → Page Number

9. **Export to PDF:**
   - File → Export as PDF
   - Settings:
     - Quality: 100%
     - Include images: ✓
   - Save as: `FINAL_REPORT.pdf`

---

**Option C: Online Converter (Quick but less control)**

1. Upload FINAL_REPORT.md to: https://www.markdowntopdf.com/
2. Download PDF
3. Open in PDF editor to add images manually
4. Re-export

---

### STEP 14: Verify PDF Quality (5 minutes)

```bash
# Open the PDF
xdg-open documentation/FINAL_REPORT.pdf
```

**Check:**
- [ ] All text is readable
- [ ] All 7 images are visible and clear
- [ ] Tables are formatted correctly
- [ ] Student names are present
- [ ] Page numbers work
- [ ] File size reasonable (5-15 MB is fine)

---

## 📋 SESSION 5: FINAL VERIFICATION (30 minutes)

### STEP 15: Run All Notebooks One Last Time (15 minutes)

```bash
cd /home/atahan/Desktop/odevv
source venv/bin/activate
```

**Test each notebook:**

```bash
# Part 1
jupyter nbconvert --to notebook --execute part1-decision-trees/DT_analysis.ipynb --output DT_FINAL_OUTPUT.ipynb

# Part 2
jupyter nbconvert --to notebook --execute part2-naive-bayes/NBC_implementation.ipynb --output NBC_FINAL_OUTPUT.ipynb

# Part 3 (with REAL data now!)
jupyter nbconvert --to notebook --execute part3-genetic-algorithms/GA_implementation.ipynb --output GA_FINAL_OUTPUT.ipynb

# Part 4
jupyter nbconvert --to notebook --execute part4-fuzzy-logic/FL_implementation.ipynb --output FL_FINAL_OUTPUT.ipynb
```

**Check for errors:** If any notebook fails, open it in Jupyter and debug.

---

### STEP 16: Verify All Files Present (5 minutes)

```bash
# Check all 7 visualizations exist
ls -lh part1-decision-trees/tree_visualization.png
ls -lh part3-genetic-algorithms/*.png
ls -lh part4-fuzzy-logic/*.png

# Should see:
# - tree_visualization.png
# - fitness_evolution.png
# - best_solution_visualization.png
# - capacity_utilization.png
# - membership_functions.png
# - output_surface.png
# - contour_map.png

# Check documentation
ls -lh documentation/FINAL_REPORT.pdf
ls -lh documentation/*.pptx

# Check datasets
ls -lh part1-decision-trees/data/
ls -lh part2-naive-bayes/data/
```

---

### STEP 17: Create Submission Package (10 minutes)

```bash
cd /home/atahan/Desktop/odevv

# Create clean submission folder
mkdir -p submission_package

# Copy documentation
cp documentation/FINAL_REPORT.pdf submission_package/
cp documentation/*.pptx submission_package/ 2>/dev/null || echo "Add presentation manually"

# Copy all code folders
cp -r part1-decision-trees submission_package/
cp -r part2-naive-bayes submission_package/
cp -r part3-genetic-algorithms submission_package/
cp -r part4-fuzzy-logic submission_package/

# Copy support files
cp README.md submission_package/
cp dataset_calculations.txt submission_package/

# Create ZIP
zip -r Decision_Informatics_FINAL_SUBMISSION.zip submission_package/

# Check size
ls -lh Decision_Informatics_FINAL_SUBMISSION.zip
```

**Expected size:** 10-30 MB (depends on notebooks with outputs)

---

## ✅ FINAL CHECKLIST

Before submitting, verify:

### Code (4 parts)
- [ ] Part 1: Heart disease DT runs without errors
- [ ] Part 2: Email spam NBC runs without errors
- [ ] Part 3: **GA uses REAL Dataset #7** (not placeholders)
- [ ] Part 4: Fuzzy tip calculator runs without errors
- [ ] All 7 PNG visualizations exist and have recent timestamps
- [ ] All notebooks have outputs saved

### Documentation
- [ ] FINAL_REPORT.pdf exists and opens correctly
- [ ] Student names appear in report (not placeholders)
- [ ] GA section has CORRECT results (new fitness, new items)
- [ ] All 7 images embedded in PDF
- [ ] Tables formatted properly
- [ ] Page numbers present

### Presentation
- [ ] Presentation file exists (.pptx or .pdf)
- [ ] 18 slides (or close to it)
- [ ] Student names on title slide
- [ ] All 7 images inserted
- [ ] Large, readable fonts (24pt+)
- [ ] Practiced presentation (under 15 minutes)

### Dataset Verification
- [ ] GA: Dataset #7 used (1 + 207081 mod 15 = 7) ✓
- [ ] FL: Dataset #22 used (1 + 207081 mod 29 = 22) ✓
- [ ] Calculations shown in documentation
- [ ] Excel file (problem_plecakowy_zestawy) was actually used

### Submission Package
- [ ] ZIP file created: `Decision_Informatics_FINAL_SUBMISSION.zip`
- [ ] Contains all 4 part folders
- [ ] Contains FINAL_REPORT.pdf
- [ ] Contains presentation file
- [ ] Contains README.md
- [ ] File size reasonable (< 50 MB)
- [ ] Test: Extract ZIP and verify all files open

---

## 📤 SUBMISSION

### Upload to Moodle

1. Log in to Moodle
2. Find Decision Informatics course
3. Navigate to assignment submission area
4. Upload `Decision_Informatics_FINAL_SUBMISSION.zip`
5. **IMPORTANT:** Download what you just uploaded to verify integrity
6. Extract the downloaded ZIP and spot-check a few files

### Coordinate with Team

- Decide who uploads (only ONE person)
- Both names must be in ALL documentation
- Keep backup copies locally

---

## ⏰ TIME ALLOCATION

| Session | Tasks | Time |
|---------|-------|------|
| 1 | Fix GA Dataset #7 | 1.5-2 hours |
| 2 | Fix Documentation | 1 hour |
| 3 | Create Presentation | 2 hours |
| 4 | Convert to PDF | 30 min |
| 5 | Final Verification | 30 min |
| **TOTAL** | | **5-6 hours** |

**Recommendation:**
- Do Session 1 TODAY (most critical)
- Do Sessions 2-3 tomorrow morning
- Do Sessions 4-5 tomorrow afternoon
- Submit by end of day tomorrow

---

## 🆘 IF YOU GET STUCK

### Problem: Can't read Excel file
**Solution:** Send me the first few rows and I'll help interpret the data structure.

### Problem: Pandoc fails to create PDF
**Solution:** Use Option B (LibreOffice Writer) instead - more manual but reliable.

### Problem: Jupyter notebook hangs
**Solution:**
```bash
# Kill it
pkill jupyter
# Restart
jupyter notebook
```

### Problem: Not enough time
**Priority order:**
1. Fix GA dataset #7 (CRITICAL)
2. Add names to report
3. Create presentation (even if simple)
4. Convert to PDF (even if images missing)

---

## 🎯 SUCCESS CRITERIA

You'll know you're done when:

✅ All notebooks run without errors
✅ Part 3 shows DIFFERENT results than before (proves you're using real data)
✅ PDF report has your names and all images
✅ Presentation has 15-20 slides with visualizations
✅ ZIP file extracts and everything opens
✅ You can explain what Dataset #7 is and why it matters
✅ You're confident presenting your results

---

**Good luck! Start with Session 1 (fixing the GA dataset) - it's the most critical fix.**

**Time to start:** RIGHT NOW! ⏰

