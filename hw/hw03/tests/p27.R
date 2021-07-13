library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p27a
  points: 0.5
- hidden: false
  name: p27b
  points: 0.5
name: p27

"

test_that("p27a", {
  expect_true(is.numeric(p27))
  print("Checking: p27 is a number")
})

test_that("p27b", {
  expect_true(all.equal(p27,15578.1, tol = 0.1))
  print("Checking: value of p27")
})
