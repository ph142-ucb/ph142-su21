library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p10a
  points: 0.5
- hidden: false
  name: p10b
  points: 0.5
name: p10

"

test_that("p10a", {
  expect_true(p10 > 0 & p10 < 1)
  print("Checking: range of p10")
})

test_that("p10b", {
  expect_true(all.equal(p10, dbinom(x = 12, size = 14, prob = 0.45) + 
  dbinom(x = 13, size = 14, prob = 0.45) + 
  dbinom(x = 14, size = 14, prob = 0.45), tol = 0.1))
  print("Checking: value of p10")
})
