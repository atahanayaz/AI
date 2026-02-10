#!/usr/bin/env python3
"""
Test script to verify all notebooks run without errors.
"""

import subprocess
import sys
from pathlib import Path

def test_notebook(notebook_path, description):
    """Test a single notebook."""
    print(f"\n{'='*70}")
    print(f"Testing: {description}")
    print(f"File: {notebook_path}")
    print(f"{'='*70}")

    try:
        result = subprocess.run(
            ['jupyter', 'nbconvert', '--to', 'notebook', '--execute',
             '--ExecutePreprocessor.timeout=600',
             '--output-dir=.', notebook_path],
            capture_output=True,
            text=True,
            timeout=600
        )

        if result.returncode == 0:
            print(f"✓ SUCCESS: {description} ran without errors")
            return True
        else:
            print(f"✗ FAILED: {description}")
            print(f"Error: {result.stderr}")
            return False

    except subprocess.TimeoutExpired:
        print(f"✗ TIMEOUT: {description} took too long")
        return False
    except Exception as e:
        print(f"✗ ERROR: {str(e)}")
        return False

def main():
    """Run all notebook tests."""
    notebooks = [
        ('part1-decision-trees/DT_analysis.ipynb', 'Part 1: Decision Trees'),
        ('part2-naive-bayes/NBC_implementation.ipynb', 'Part 2: Naive Bayes'),
        ('part3-genetic-algorithms/GA_implementation.ipynb', 'Part 3: Genetic Algorithms'),
        ('part4-fuzzy-logic/FL_implementation.ipynb', 'Part 4: Fuzzy Logic'),
    ]

    results = []

    print("\n" + "="*70)
    print("NOTEBOOK TESTING SUITE")
    print("="*70)

    for notebook_path, description in notebooks:
        success = test_notebook(notebook_path, description)
        results.append((description, success))

    # Summary
    print("\n" + "="*70)
    print("TESTING SUMMARY")
    print("="*70)

    for description, success in results:
        status = "✓ PASS" if success else "✗ FAIL"
        print(f"{status}: {description}")

    total = len(results)
    passed = sum(1 for _, success in results if success)

    print(f"\nTotal: {passed}/{total} passed")

    if passed == total:
        print("\n🎉 ALL NOTEBOOKS PASSED!")
        return 0
    else:
        print(f"\n⚠️  {total - passed} notebook(s) failed")
        return 1

if __name__ == '__main__':
    sys.exit(main())
