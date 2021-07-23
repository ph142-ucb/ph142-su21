library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p1a
  points: 0.5
- hidden: false
  name: p1b
  points: 0.5
name: p1

"

test_that("p1a", {
  expect_true(p1 > 0 & p1 < 1)
  print("Checking: range of p1")
})

test_that("p1b", {
  expect_true(all.equal(p1,  qnorm(0.8, mean = 0, sd = 1), tol = 0.01) )
  print("Checking: value of p1")
})
