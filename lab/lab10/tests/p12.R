library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p12a
  points: 0
- hidden: false
  name: p12b
  points: 0
name: p12

"

test_that("p12a", {
  expect_true(all.equal(p12[1], 0.2340838, tol = 0.001))
  print("Checking: lowerbound to 3 decimal places")
})

test_that("p12b", {
  expect_true(all.equal(p12[2],0.5278209, tol = 0.001))
  print("Checking: upperbound to 3 decimal places")
})
