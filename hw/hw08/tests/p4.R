library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p4a
  points: 1.5
- hidden: false
  name: p4b
  points: 1.5
name: p4

"

test_that("p4a", {
  expect_true(all.equal(round(CI_upperbound, 3), 1.498, 0.001))
  print("Checking: value of upperbound")
})

test_that("p4b", {
  expect_true(all.equal(round(CI_lowerbound, 2), -0.38, 0.01))
  print("Checking: value of lowerbound")
})
