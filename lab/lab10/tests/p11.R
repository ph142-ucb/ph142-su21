library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p11a
  points: 0
- hidden: false
  name: p11b
  points: 0
name: p11

"

test_that("p11a", {
  expect_true(all.equal(p11[1], 0.2229295, tol = 0.001))
  print("Checking: lowerbound to 3 decimal places")
})

test_that("p11b", {
  expect_true(all.equal(p11[2],0.5400424, tol = 0.001))
  print("Checking: upperbound to 3 decimal places")
})
