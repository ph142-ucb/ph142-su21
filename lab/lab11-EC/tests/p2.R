library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p1a
  points: 0.5
- hidden: false
  name: p1b
  points: 0.5
name: p2

"

test_that("p1a", {
  expect_true(p_value < 1 & p_value > 0)
  print("Checking: range of p-value")
})

test_that("p1b", {
  expect_true(all.equal(p_value, 0.001718342, tol = 0.0001))
  print("Checking: p-value to 4 decimal places")
})
