# IT 2110: Probability and Statistics in R

This repository showcases a series of laboratory exercises completed as part of the **IT 2110 - Probability and Statistics** module. The scripts demonstrate proficiency in R programming, data cleaning, exploratory data analysis, and the application of theoretical probability distributions to real-world datasets.

## 🚀 Overview

The codebase is organized into laboratory modules, each focusing on a specific domain of statistical analysis:

* **Data Handling:** Importing/exporting CSV and TXT files, data frame manipulation, and factor leveling.
* **Descriptive Statistics:** Calculating Mean, Median, Mode, Quartiles, and IQR.
* **Data Visualization:** Creating professional-grade Boxplots, Histograms, Pie Charts, and Bar Plots.
* **Probability Theory:** Implementation of Binomial, Poisson, Exponential, and Normal distributions.
* **Custom Functions:** Algorithmic solutions for finding roots, detecting outliers, and frequency mapping.

## 📂 File Structure

| File | Focus Area | Key Techniques |
| :--- | :--- | :--- |
| `Lab02.R` | R Foundations | Functions, Loops, File I/O (CSV/TXT), Basic Plotting |
| `Lab03.R` | Data Categorization | Factors, Pie Charts, Grouped Bar Plots, `tapply` |
| `Lab04.R` | Exploratory Data Analysis | Five-number summary, Outlier detection, Stem-and-leaf plots |
| `Lab05.R` | Frequency Distributions | Histogram customization, binning, and color mapping |
| `Lab07.R` | Probability Distributions | `pnorm`, `dbinom`, `ppois`, `qnorm` (CDF/PDF/Quantiles) |

## 📊 Key Statistical Implementations

### 1. Exploratory Data Analysis (EDA)
Comprehensive analysis of datasets to identify trends and anomalies.
* **Outlier Detection:** Custom functions to calculate lower and upper bounds using $1.5 \times IQR$.
* **Visual Summaries:** Side-by-side boxplots for categorical comparison.

### 2. Probability Distributions
Practical application of statistical formulas:
* **Binomial:** Calculating exact and cumulative probabilities for discrete events.
* **Normal Distribution:** Finding probabilities under the curve and calculating Z-scores via `qnorm`.
* **Exponential & Poisson:** Modeling arrival rates and time-between-events.

## 🛠️ Requirements
* [R (version 4.0+)](https://www.r-project.org/)
* [RStudio](https://posit.co/download/rstudio-desktop/)
* Required Libraries: `tidyr`, `dplyr`
