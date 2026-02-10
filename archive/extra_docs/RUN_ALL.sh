#!/bin/bash
# Script to run all notebooks and generate outputs

echo "=========================================="
echo "Running All Project Notebooks"
echo "=========================================="
echo ""

# Activate virtual environment
source venv/bin/activate

echo "✓ Virtual environment activated"
echo ""

# Part 1: Decision Trees
echo "=========================================="
echo "Part 1: Decision Trees"
echo "=========================================="
echo "Running DT_analysis.ipynb..."
jupyter nbconvert --to notebook --execute \
    --ExecutePreprocessor.timeout=600 \
    --output DT_analysis_output.ipynb \
    part1-decision-trees/DT_analysis.ipynb

if [ $? -eq 0 ]; then
    echo "✓ Part 1 completed successfully"
else
    echo "✗ Part 1 failed"
fi
echo ""

# Part 2: Naive Bayes
echo "=========================================="
echo "Part 2: Naive Bayes Classifier"
echo "=========================================="
echo "Running NBC_implementation.ipynb..."
jupyter nbconvert --to notebook --execute \
    --ExecutePreprocessor.timeout=600 \
    --output NBC_implementation_output.ipynb \
    part2-naive-bayes/NBC_implementation.ipynb

if [ $? -eq 0 ]; then
    echo "✓ Part 2 completed successfully"
else
    echo "✗ Part 2 failed"
fi
echo ""

# Part 3: Genetic Algorithms
echo "=========================================="
echo "Part 3: Genetic Algorithms"
echo "=========================================="
echo "Running GA_implementation.ipynb..."
jupyter nbconvert --to notebook --execute \
    --ExecutePreprocessor.timeout=600 \
    --output GA_implementation_output.ipynb \
    part3-genetic-algorithms/GA_implementation.ipynb

if [ $? -eq 0 ]; then
    echo "✓ Part 3 completed successfully"
else
    echo "✗ Part 3 failed"
fi
echo ""

# Part 4: Fuzzy Logic
echo "=========================================="
echo "Part 4: Fuzzy Logic"
echo "=========================================="
echo "Running FL_implementation.ipynb..."
jupyter nbconvert --to notebook --execute \
    --ExecutePreprocessor.timeout=600 \
    --output FL_implementation_output.ipynb \
    part4-fuzzy-logic/FL_implementation.ipynb

if [ $? -eq 0 ]; then
    echo "✓ Part 4 completed successfully"
else
    echo "✗ Part 4 failed"
fi
echo ""

echo "=========================================="
echo "All notebooks completed!"
echo "=========================================="
echo ""
echo "Generated files:"
find . -name "*.png" -type f | grep -E "(part1|part2|part3|part4)" | sort
echo ""
echo "Check the output notebooks for results."
