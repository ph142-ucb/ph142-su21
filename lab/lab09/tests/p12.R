library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p12a
  points: 0.3333333333333333
- hidden: false
  name: p12b
  points: 0.3333333333333333
- hidden: false
  name: p12c
  points: 0.3333333333333333
name: p12

"

test_that("p12a", {
  expect_true("data.frame" %in% class(p12))
  print("Checking: dataframe created")
})

test_that("p12b", {
  expect_true(nrow(p12) == 5)
  print("Checking: group_by used correctly")
})

test_that("p12c", {
  expect_true(ncol(p12) == 3)
  print("Checking: summarize - columns for mean and sd created")
})
