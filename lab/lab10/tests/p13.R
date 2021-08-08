library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p13a
  points: 0
- hidden: false
  name: p13b
  points: 0
name: p13

"

test_that("p13a", {
  expect_true(all.equal(p13[1], 0.2181250, tol = 0.001))
  print("Checking: lowerbound to 3 decimal places")
})

test_that("p13b", {
  expect_true(all.equal(p13[2], 0.5400572, tol = 0.001))
  print("Checking: upperbound to 3 decimal places")
})
