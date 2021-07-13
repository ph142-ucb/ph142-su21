library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p28a
  points: 0.5
- hidden: false
  name: p28b
  points: 0.5
name: p28

"

test_that("p28a", {
  expect_true(is.numeric(p28))
  print("Checking: p28 is a number")
})

test_that("p28b", {
  expect_true(all.equal(p28, 17683.7, tol = 0.1))
  print("Checking: value of p28")
})
