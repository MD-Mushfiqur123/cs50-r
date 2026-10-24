# test_project.R - Comprehensive Test Suite for Final Project
# Harvard CS50R Final Project

library(testthat)

source("R/calculate_summary_stats.R")
source("R/calculate_survival_rate.R")
source("R/filter_biomarker_outliers.R")

test_that("calculate_summary_stats computes exact metrics", {
  vals <- c(2, 4, 6, 8, 10)
  stats <- calculate_summary_stats(vals)
  expect_equal(stats$mean, 6)
  expect_equal(stats$median, 6)
})

test_that("calculate_survival_rate evaluates proportions properly", {
  status <- c(0, 0, 0, 1)
  expect_equal(calculate_survival_rate(status), 75.0)
})

test_that("filter_biomarker_outliers identifies statistical anomalies", {
  data_points <- c(10, 10, 11, 10, 9, 10, 500)
  cleaned <- filter_biomarker_outliers(data_points)
  expect_false(500 %in% cleaned)
  expect_equal(length(cleaned), 6)
})
