library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p21a
  points: 0.4
- hidden: false
  name: p21b
  points: 0.4
- hidden: false
  name: p21c
  points: 0.4
- hidden: false
  name: p21d
  points: 0.4
- hidden: false
  name: p21e
  points: 0.4
name: p21

"

test_that("p21a", {
  expect_true(is.data.frame(p21))
  print("Checking: p21 is a dataframe")
})

test_that("p21b", {
  expect_true(nrow(p21) == 1)
  print("Checking: summarized used correctly")
})

test_that("p21c", {
  expect_true(ncol(p21) == 2)
  print("Checking: two columns in dataframe")
})

test_that("p21d", {
  expect_true(all.equal(p21$corr[1], 0.6702694, tol = 0.01))
  print("Checking: value of corr column in p21")
})

test_that("p21e", {
  expect_true(all.equal(p21$corr_sq[1], 0.4492611, tol = 0.01))
  print("Checking: value of corr_sq column in p21")
})
