library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p22a
  points: 0.4
- hidden: false
  name: p22b
  points: 0.4
- hidden: false
  name: p22c
  points: 0.4
- hidden: false
  name: p22d
  points: 0.4
- hidden: false
  name: p22e
  points: 0.4
name: p22

"

test_that("p22a", {
  expect_true(is.data.frame(p22))
  print("Checking: p22 is a dataframe")
})

test_that("p22b", {
  expect_true(nrow(p22) == 1)
  print("Checking: summarized used correctly")
})

test_that("p22c", {
  expect_true(ncol(p22) == 2)
  print("Checking: two columns in dataframe")
})

test_that("p22d", {
  expect_true(all.equal(p22$corr[1], 0.9207411, tol = 0.01))
  print("Checking: value of corr column in p22")
})

test_that("p22e", {
  expect_true(all.equal(p22$corr_sq[1], 0.8477642, tol = 0.01))
  print("Checking: value of corr_sq column in p22")
})
