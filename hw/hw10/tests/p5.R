library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p5a
  points: 0.5
- hidden: false
  name: p5b
  points: 0.5
name: p5

"

test_that("p5a", {
  expect_true(all.equal(p5[1], 0.1291020 , tol = 0.001))
  print("Checking: lowerbound to 3 decimal places")
})

test_that("p5b", {
  expect_true(all.equal(p5[2], 0.1473222, tol = 0.001))
  print("Checking: upperbound to 3 decimal places")
})
