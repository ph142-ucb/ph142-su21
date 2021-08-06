library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p82a
  points: 0.5
- hidden: false
  name: p82b
  points: 0.5
name: p8-2

"

test_that("p82a", {
  expect_true(p_value < 1 & p_value > 0)
  print("Checking: range of p-value")
})

test_that("p82b", {
  expect_true(all.equal(p_value, 0.8174, tol = 0.001))
  print("Checking: value of p-value to at least 3 decimals")
})
