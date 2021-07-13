library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p17a
  points: 0.5
- hidden: false
  name: p17b
  points: 0.5
- hidden: false
  name: p17c
  points: 0.5
- hidden: false
  name: p17d
  points: 0.5
name: p17

"

test_that("p17a", {
  expect_true("insure_smaller_subset" == insure_better_model$call$data)
  print("Checking: insure_smaller_subset is the dataset")
})

test_that("p17b", {
  expect_true("age" %in% names(insure_better_model$model))
  print("Checking: age is in the model")
})

test_that("p17c", {
  expect_true("charges" %in% names(insure_better_model$model))
  print("Checking: charges is in the model")
})

test_that("p17d", {
  expect_true(all.equal(insure_better_model$coefficients[[2]], 266.8725, tol = 0.01))
  print("Checking: slope value")
})
