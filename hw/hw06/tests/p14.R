library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p14a
  points: 0.5
- hidden: false
  name: p14b
  points: 0.5
name: p14

"

test_that("p14a", {
  expect_true(all.equal(ci_99[1], 85.592, tol = 0.001))
  print("Checking: first value of ci_99")
})

test_that("p14b", {
  expect_true(all.equal(ci_99[2], 96.608, tol = 0.001))
  print("Checking: second value of ci_99")
})
