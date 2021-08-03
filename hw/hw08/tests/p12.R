library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p12a
  points: 1.5
- hidden: false
  name: p12b
  points: 1.5
name: p12

"

test_that("p12a", {
  expect_true(all.equal(round(CI_upperbound_12, 2), 4.73, 0.01))
  print("Checking: value of upperbound")
})

test_that("p12b", {
  expect_true(all.equal(round(CI_lowerbound_12, 2), 4.31, 0.01))
  print("Checking: value of lowerbound")
})
