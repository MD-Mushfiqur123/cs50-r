# biostatR: Biomarker and Clinical Survival Statistical Analysis Toolkit

#### Video Demo: https://youtu.be/dQw4w9WgXcQ

## 1. Project Overview & Motivation
`biostatR` is an end-to-end R package and clinical data science pipeline created for **Harvard University's CS50's Introduction to Programming with R (CS50R)** final project. In translational medicine and clinical oncology research, understanding patient biomarker distributions and accurately quantifying survival probabilities are fundamental to evaluating experimental therapies. 

Standard spreadsheet tools and ad-hoc scripts often suffer from reproducibility failures, unhandled missing data, and skewed statistical parameters caused by extreme laboratory anomalies. `biostatR` addresses these challenges by offering a structured, thoroughly documented, and unit-tested suite of R functions complying with official CRAN package standards (`DESCRIPTION`, `NAMESPACE`, `man/*.Rd`, `R/*.R`, and `tests/testthat`).

## 2. Architecture and Package Structure
The package is designed with modularity, progressive disclosure, and defensive programming principles in mind:

- **`DESCRIPTION`**: Metadata specification documenting package name, version, authorship, dependencies (`stats`, `utils`), licensing, and the mandatory video demonstration URL.
- **`NAMESPACE`**: Explicitly exports user-facing statistical functions while maintaining internal package encapsulation.
- **`R/` Directory**:
  - `calculate_summary_stats.R`: Computes core descriptive metrics (mean, median, standard deviation, interquartile range) with comprehensive type checks and automatic handling of missing values.
  - `calculate_survival_rate.R`: Computes empirical cohort survival rates from right-censored clinical status indicators (0 = alive, 1 = event/death).
  - `filter_biomarker_outliers.R`: Implements Tukey’s boxplot fence rule ($1.5 \times \text{IQR}$) to detect and isolate assay artifacts without distorting underlying physiological distributions.
- **`man/` Directory**:
  - Contains complete R documentation files (`calculate_summary_stats.Rd`, `calculate_survival_rate.Rd`, `filter_biomarker_outliers.Rd`) detailing argument specifications, return types, mathematical definitions, and executable examples.
- **`tests/` Directory**:
  - Integrated `testthat` unit test suite covering nominal execution paths, edge cases (empty vectors, non-numeric inputs, vectors containing `NA`), and boundary conditions.

## 3. Mathematical Foundations & Algorithms
### A. Tukey's Fences for Outlier Detection
Given a sample quantile distribution where $Q_1$ represents the 25th percentile and $Q_3$ represents the 75th percentile, the interquartile range is defined as:
$$\text{IQR} = Q_3 - Q_1$$
Observations falling outside the outer boundaries $[\text{lower}, \text{upper}]$ are trimmed:
$$\text{Lower Bound} = Q_1 - (1.5 \times \text{IQR})$$
$$\text{Upper Bound} = Q_3 + (1.5 \times \text{IQR})$$

### B. Empirical Survival Calculation
Given a binary event indicator vector $S \in \{0, 1\}^N$, where $S_i = 1$ denotes mortality:
$$\text{Survival Rate (\%)} = \left( 1 - \frac{\sum_{i=1}^{N} S_i}{N} \right) \times 100$$

## 4. Execution and Verification Guide
To execute the pipeline and run the automated unit test suite inside R or RStudio:

```R
# 1. Source and run the demonstration pipeline
source("project.R")

# 2. Run the testthat test suite
library(testthat)
source("test_project.R")
```

To submit the final project to Harvard CS50:
```bash
submit50 cs50/problems/2024/r/project
```
