# project.R - Standalone Clinical Biomarker and Survival Analysis Pipeline
# Harvard CS50R Final Project

source("R/calculate_summary_stats.R")
source("R/calculate_survival_rate.R")
source("R/filter_biomarker_outliers.R")

cat("=================================================================\n")
cat("   biostatR: Clinical Survival & Biomarker Analysis Pipeline     \n")
cat("=================================================================\n\n")

# Synthetic clinical cohort
set.seed(42)
n_patients <- 100
biomarker_levels <- c(rnorm(95, mean = 25, sd = 4), c(95, 110, 120, 140, 150))
survival_status <- sample(c(0, 1), size = n_patients, replace = TRUE, prob = c(0.78, 0.22))

cat("1. Raw Cohort Biomarker Statistics:\n")
raw_stats <- calculate_summary_stats(biomarker_levels)
cat("   Mean:   ", round(raw_stats$mean, 2), "\n")
cat("   Median: ", round(raw_stats$median, 2), "\n")
cat("   SD:     ", round(raw_stats$sd, 2), "\n")
cat("   IQR:    ", round(raw_stats$iqr, 2), "\n\n")

cat("2. Outlier Filtering:\n")
filtered_biomarkers <- filter_biomarker_outliers(biomarker_levels)
cat("   Original count: ", length(biomarker_levels), "\n")
cat("   Filtered count: ", length(filtered_biomarkers), "\n")
filtered_stats <- calculate_summary_stats(filtered_biomarkers)
cat("   Adjusted Mean:  ", round(filtered_stats$mean, 2), "\n")
cat("   Adjusted SD:    ", round(filtered_stats$sd, 2), "\n\n")

cat("3. Cohort Survival Metrics:\n")
overall_survival <- calculate_survival_rate(survival_status)
cat("   Empirical Cohort Survival Rate: ", overall_survival, "%\n\n")

cat("Execution completed successfully.\n")
