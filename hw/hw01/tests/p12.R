library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p12a
  points: 0.6666666666666666
- hidden: false
  name: p12b
  points: 0.6666666666666666
- hidden: false
  name: p12c
  points: 0.6666666666666666
name: p12

"

test_that("p12a", {
  expect_true(is.data.frame(sleep_time_rev))
  print("p12a: Checking sleep_time_rev is a dataframe.")
})

test_that("p12b", {
  expect_true(ncol(sleep_time_rev) == 11)
  print("p12b: Checking sleep_time_rev has 11 columns.")
})

test_that("p12c", {
  expect_true(nrow(sleep_time_rev) == 83)
  print("p12c: Checking sleep_time_rev has 83 rows.")
})
