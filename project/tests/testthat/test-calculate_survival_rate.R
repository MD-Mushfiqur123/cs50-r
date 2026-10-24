library(testthat)

test_that("calculate_survival_rate calculates correct survival percentages", {
  expect_equal(calculate_survival_rate(c(0, 0, 0, 0)), 100.0)
  expect_equal(calculate_survival_rate(c(1, 1, 1, 1)), 0.0)
  expect_equal(calculate_survival_rate(c(0, 0, 1, 0)), 75.0)
})

test_that("calculate_survival_rate handles NA values and invalid empty vectors", {
  expect_equal(calculate_survival_rate(c(0, 1, NA, 0)), 66.67)
  expect_error(calculate_survival_rate(c()))
})
