# test-str_length.R - Unit Tests for stringr::str_length
# Harvard CS50R - Week 6: Testing Programs

library(stringr)
library(testthat)

test_that("str_length handles basic and empty strings", {
  expect_equal(str_length("hello"), 5)
  expect_equal(str_length("CS50R"), 5)
  expect_equal(str_length(""), 0)
})

test_that("str_length handles spaces, punctuation, and multi-byte characters", {
  expect_equal(str_length("hello world"), 11)
  expect_equal(str_length("?!#$"), 4)
  expect_equal(str_length("😊"), 1)
})

test_that("str_length handles vectors and factors", {
  expect_equal(str_length(c("a", "abc", "abcde")), c(1, 3, 5))
  expect_equal(str_length(factor("abc")), 3)
})

test_that("str_length handles missing NA values", {
  expect_equal(str_length(NA), NA_integer_)
  expect_equal(str_length(c("test", NA)), c(4, NA))
})
