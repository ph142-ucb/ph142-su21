library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p20a
  points: 0.5
- hidden: false
  name: p20b
  points: 0.5
name: p20

"

test_that("p20a", {
  expect_true(is.numeric(insure_better_model_r2))
  print("Checking: insure_better_model_r2 is a number")
})

test_that("p20b", {
  expect_true(all.equal(insure_better_model_r2, 0.8477642, tol = 0.01))
  print("Checking: value of insure_better_model_r2 rounded to 2 decimals")
})
