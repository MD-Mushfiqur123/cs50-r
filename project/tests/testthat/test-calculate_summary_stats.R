library(testthat)

test_that("calculate_summary_stats works correctly with valid input", {
  res <- calculate_summary_stats(c(10, 20, 30, 40, 50))
  expect_equal(res$mean, 30)
  expect_equal(res$median, 30)
  expect_equal(res$iqr, 20)
})

test_that("calculate_summary_stats ignores NAs and throws errors on invalid input", {
  res_na <- calculate_summary_stats(c(10, 20, NA, 30))
  expect_equal(res_na$mean, 20)
  expect_error(calculate_summary_stats(c("a", "b", "c")))
})
