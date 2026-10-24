# test-believe.R - Comprehensive Unit Tests for believe.R
# Harvard CS50R - Week 6: Testing Programs

library(testthat)
source("believe.R")

test_that("is_palindrome handles basic single words and case-insensitivity", {
  expect_true(is_palindrome("racecar"))
  expect_true(is_palindrome("Madam"))
  expect_true(is_palindrome("Radar"))
  expect_false(is_palindrome("hello"))
})

test_that("is_palindrome ignores whitespace and punctuation in phrases", {
  expect_true(is_palindrome("A man, a plan, a canal: Panama!"))
  expect_true(is_palindrome("Was it a car or a cat I saw?"))
  expect_true(is_palindrome("No 'x' in Nixon"))
  expect_false(is_palindrome("This is definitely not a palindrome."))
})

test_that("is_palindrome handles edge cases like empty and single char strings", {
  expect_true(is_palindrome(""))
  expect_true(is_palindrome("a"))
  expect_true(is_palindrome("!@#$%"))
})

test_that("is_palindrome handles invalid or non-string inputs safely", {
  expect_false(is_palindrome(NA))
  expect_false(is_palindrome(12321))
  expect_false(is_palindrome(NULL))
})
