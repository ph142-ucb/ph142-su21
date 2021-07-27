library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p7a
  points: 0.5
- hidden: false
  name: p7b
  points: 0.5
name: p7

"

test_that("p7a", {
  expect_true(all.equal(mean, 5.7, tol = 0.01))
  print("Checking: value of mean")
})

test_that("p7b", {
  expect_true(all.equal(sd, 2.3874, tol = 0.001))
  print("Checking: value of sd")
})
