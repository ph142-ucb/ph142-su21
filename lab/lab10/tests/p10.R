library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p11a
  points: 0
- hidden: false
  name: p11b
  points: 0
name: p10

"

test_that("p11a", {
  expect_true(all.equal(p10[1],0.2150476, tol = 0.001))
  print("Checking: lowerbound to 3 decimal places")
})

test_that("p11b", {
  expect_true(all.equal(p10[2],0.5217945, tol = 0.001))
  print("Checking: upperbound to 3 decimal places")
})
