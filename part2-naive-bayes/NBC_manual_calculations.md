# Naive Bayes Classifier - Manual Calculations

**Students:** Album #103569, #103512
**Dataset:** Email Spam Classification (Custom)
**Date:** 2026-02-08

---

## Dataset Description

We created a custom email spam detection dataset with 30 samples and 5 features:

### Features:
1. **contains_money**: Email contains words like "money", "cash", "$$" (1=yes, 0=no)
2. **contains_free**: Email contains word "free" (1=yes, 0=no)
3. **contains_click**: Email contains "click here", "click now" (1=yes, 0=no)
4. **word_count**: Number of words in email (numerical)
5. **has_urgent**: Email contains "urgent", "immediate" (1=yes, 0=no)

### Target:
- **spam**: 1 = spam, 0 = not spam (ham)

---

## Training Data Summary (30 emails)

From our dataset:
- **Total emails**: 30
- **Spam emails**: 15
- **Ham (not spam) emails**: 15

---

## Step 1: Calculate Prior Probabilities

### P(Spam) and P(Ham)

```
P(Spam) = Number of spam emails / Total emails
        = 15 / 30
        = 0.5

P(Ham) = Number of ham emails / Total emails
       = 15 / 30
       = 0.5
```

---

## Step 2: Calculate Likelihoods for Each Feature

### Feature: contains_money

**For Spam emails (15 total):**
- contains_money = 1: 15 emails
- contains_money = 0: 0 emails

```
P(contains_money=1 | Spam) = 15/15 = 1.0
P(contains_money=0 | Spam) = 0/15 = 0.0
```

**For Ham emails (15 total):**
- contains_money = 1: 0 emails
- contains_money = 0: 15 emails

```
P(contains_money=1 | Ham) = 0/15 = 0.0
P(contains_money=0 | Ham) = 15/15 = 1.0
```

---

### Feature: contains_free

**For Spam emails:**
- contains_free = 1: 11 emails
- contains_free = 0: 4 emails

```
P(contains_free=1 | Spam) = 11/15 ≈ 0.733
P(contains_free=0 | Spam) = 4/15 ≈ 0.267
```

**For Ham emails:**
- contains_free = 1: 3 emails
- contains_free = 0: 12 emails

```
P(contains_free=1 | Ham) = 3/15 = 0.2
P(contains_free=0 | Ham) = 12/15 = 0.8
```

---

### Feature: contains_click

**For Spam emails:**
- contains_click = 1: 13 emails
- contains_click = 0: 2 emails

```
P(contains_click=1 | Spam) = 13/15 ≈ 0.867
P(contains_click=0 | Spam) = 2/15 ≈ 0.133
```

**For Ham emails:**
- contains_click = 1: 4 emails
- contains_click = 0: 11 emails

```
P(contains_click=1 | Ham) = 4/15 ≈ 0.267
P(contains_click=0 | Ham) = 11/15 ≈ 0.733
```

---

### Feature: has_urgent

**For Spam emails:**
- has_urgent = 1: 15 emails
- has_urgent = 0: 0 emails

```
P(has_urgent=1 | Spam) = 15/15 = 1.0
P(has_urgent=0 | Spam) = 0/15 = 0.0
```

**For Ham emails:**
- has_urgent = 1: 0 emails
- has_urgent = 0: 15 emails

```
P(has_urgent=1 | Ham) = 0/15 = 0.0
P(has_urgent=0 | Ham) = 15/15 = 1.0
```

---

## Step 3: Manual Classification Examples

We will classify 3 test emails manually using Naive Bayes theorem.

### Test Email 1:
**Features:** contains_money=1, contains_free=1, contains_click=1, has_urgent=1

#### Calculate P(Spam | Features):

```
P(Spam | Features) ∝ P(Spam) × P(contains_money=1|Spam) × P(contains_free=1|Spam) ×
                     P(contains_click=1|Spam) × P(has_urgent=1|Spam)

= 0.5 × 1.0 × 0.733 × 0.867 × 1.0
= 0.5 × 1.0 × 0.733 × 0.867 × 1.0
= 0.318
```

#### Calculate P(Ham | Features):

```
P(Ham | Features) ∝ P(Ham) × P(contains_money=1|Ham) × P(contains_free=1|Ham) ×
                    P(contains_click=1|Ham) × P(has_urgent=1|Ham)

= 0.5 × 0.0 × 0.2 × 0.267 × 0.0
= 0.0
```

**Prediction:** SPAM (P(Spam) > P(Ham))

---

### Test Email 2:
**Features:** contains_money=0, contains_free=0, contains_click=0, has_urgent=0

#### Calculate P(Spam | Features):

```
P(Spam | Features) ∝ 0.5 × 0.0 × 0.267 × 0.133 × 0.0
                    = 0.0
```

#### Calculate P(Ham | Features):

```
P(Ham | Features) ∝ 0.5 × 1.0 × 0.8 × 0.733 × 1.0
                   = 0.293
```

**Prediction:** HAM (P(Ham) > P(Spam))

---

### Test Email 3:
**Features:** contains_money=1, contains_free=0, contains_click=1, has_urgent=1

#### Calculate P(Spam | Features):

```
P(Spam | Features) ∝ 0.5 × 1.0 × 0.267 × 0.867 × 1.0
                    = 0.116
```

#### Calculate P(Ham | Features):

```
P(Ham | Features) ∝ 0.5 × 0.0 × 0.8 × 0.267 × 0.0
                   = 0.0
```

**Prediction:** SPAM (P(Spam) > P(Ham))

---

## Summary Table

| Test Email | contains_money | contains_free | contains_click | has_urgent | P(Spam) | P(Ham) | Prediction |
|-----------|----------------|---------------|----------------|------------|---------|--------|------------|
| 1         | 1              | 1             | 1              | 1          | 0.318   | 0.000  | SPAM       |
| 2         | 0              | 0             | 0              | 0          | 0.000   | 0.293  | HAM        |
| 3         | 1              | 0             | 1              | 1          | 0.116   | 0.000  | SPAM       |

---

## Notes on Zero Probabilities

In our manual calculations, we encountered zero probabilities (e.g., P(contains_money=1|Ham) = 0).

In practice, we should use **Laplace Smoothing** to avoid zero probabilities:

```
P(feature=value | class) = (count + α) / (total + α × num_values)
```

Where α = 1 (typically)

This ensures no probability is exactly zero, which would make the entire product zero.

---

## Comparison with Python Implementation

The Python implementation (using GaussianNB or MultinomialNB from scikit-learn) will:
1. Automatically handle smoothing
2. Calculate probabilities more precisely
3. Work with continuous features (word_count) using Gaussian distribution
4. Provide accuracy metrics

We will compare these manual calculations with Python results in the notebook.

---

## Conclusion

Naive Bayes is effective for spam classification because:
- Features are relatively independent
- Simple probabilistic model
- Fast training and prediction
- Works well with small datasets

The manual calculations demonstrate the underlying mathematics before implementing in Python.
