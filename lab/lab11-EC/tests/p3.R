library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p2a
  points: 0.5
- hidden: false
  name: p2b
  points: 0.5
name: p3

"

test_that("p2a", {
  expect_true(p_value_using_code < 1 & p_value_using_code > 0)
  print("Checking: range of p-value")
})

test_that("p2b", {
  expect_true(all.equal(p_value_using_code, 0.001718, tol = 0.0001))
  print("Checking: p-value to 4 decimal places")
})
