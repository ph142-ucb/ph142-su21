library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p19a
  points: 0.5
- hidden: false
  name: p19b
  points: 0.5
name: p19

"

test_that("p19a", {
  expect_true(is.numeric(insure_model_r2))
  print("Checking: insure_model_r2 is a number")
})

test_that("p19b", {
  expect_true(all.equal(insure_model_r2, 0.449261, tol = 0.01))
  print("Checking: value of insure_model_r2 rounded to 2 decimals")
})
