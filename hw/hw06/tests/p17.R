library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p17a
  points: 0.5
- hidden: false
  name: p17b
  points: 0.5
name: p17

"

test_that("p17a", {
  expect_true(all.equal(ci_95[1], 86.909, tol = 0.001))
  print("Checking: first value of ci_95")
})

test_that("p17b", {
  expect_true(all.equal(ci_95[2], 95.291, tol = 0.001))
  print("Checking: second value of ci_95")
})
