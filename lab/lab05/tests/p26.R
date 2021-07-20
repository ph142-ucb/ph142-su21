library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p26a
  points: 0
- hidden: false
  name: p26b
  points: 0
name: p26

"

test_that("p26a", {
  expect_true(p26 > 0 & p26 < 1)
  print("Checking: range of p26")
})

test_that("p26b", {
  expect_true(all.equal(p26, pnorm(-2.25, 0, 1), tol = 0.01) )
  print("Checking: value of p26")
})
