library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p14a
  points: 0.3333333333333333
- hidden: false
  name: p14b
  points: 0.3333333333333333
- hidden: false
  name: p14c
  points: 0.3333333333333333
name: p14

"

test_that("p14a", {
  expect_true(is.data.frame(sleep_r_bw))
  print("p14a: Checking sleep_r_bw is a dataframe.")
})

test_that("p14b", {
  expect_true(ncol(sleep_r_bw) == 13)
  print("p14b: Checking sleep_r_bw has 13 columns.")
})

test_that("p14c", {
  expect_true(nrow(sleep_r_bw) == 83)
  print("p14c: Checking sleep_r_bw has 83 rows.")
})
