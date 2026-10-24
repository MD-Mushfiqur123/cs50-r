library(testthat)

test_that("filter_biomarker_outliers trims extreme values", {
  raw_vals <- c(10, 11, 12, 11, 10, 12, 100)
  filtered <- filter_biomarker_outliers(raw_vals)
  expect_false(100 %in% filtered)
  expect_equal(length(filtered), 6)
})

test_that("filter_biomarker_outliers handles short vectors and errors on non-numeric", {
  expect_equal(filter_biomarker_outliers(c(1, 2, 3)), c(1, 2, 3))
  expect_error(filter_biomarker_outliers("invalid"))
})
