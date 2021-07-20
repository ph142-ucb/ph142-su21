library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p14a
  points: 0.5
- hidden: false
  name: p14b
  points: 0.5
name: p14

"

test_that("p14a", {
  expect_true(p14 > 0 & p14 < 1)
  print("Checking: range of p14")
})

test_that("p14b", {
  expect_true(all.equal(p14,  qnorm(0.8, mean = 0, sd = 1), tol = 0.01) )
  print("Checking: value of p14")
})
