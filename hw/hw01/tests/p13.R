library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p13a
  points: 0.3333333333333333
- hidden: false
  name: p13b
  points: 0.3333333333333333
- hidden: false
  name: p13c
  points: 0.3333333333333333
name: p13

"

test_that("p13a", {
  expect_true(is.data.frame(sleep_ratio))
  print("p13a: Checking sleep_ratio is a dataframe.")
})

test_that("p13b", {
  expect_true(ncol(sleep_ratio) == 12)
  print("p13b: Checking sleep_time_rev has 12 columns.")
})

test_that("p13c", {
  expect_true(nrow(sleep_ratio) == 83)
  print("p13c: Checking sleep_ratio has 83 rows.")
})
