library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p23a
  points: 0.5
- hidden: false
  name: p23b
  points: 0.5
name: p23

"

test_that("p23a", {
  expect_true(is.data.frame(insure_smokers))
  print("Checking: insure_smokers is a dataframe")
})

test_that("p23b", {
  expect_true(nrow(insure_smokers) == 274)
  print("Checking: filtered correctly")
})
