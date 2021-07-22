library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p21a
  points: 0.5
- hidden: false
  name: p21b
  points: 0.5
name: p21

"

test_that("p21a", {
  expect_true(p_val >= 0 & p_val <= 1)
  print("Checking: range of p_val")
})

test_that("p21b", {
  expect_true(all.equal(p_val, 0.017, tol = 0.001))
  print("Checking: value of p_val")
})
