library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p7a
  points: 0.5
- hidden: false
  name: p7b
  points: 0.5
name: p7

"

test_that("p7a", {
  expect_true(p7 > 0 & p7 < 1)
  print("Checking: range of p7")
})

test_that("p7b", {
  expect_true(all.equal(p7, dbinom(x = 7, size = 14, prob = 0.45), tol = 0.1))
  print("Checking: value of p7")
})
