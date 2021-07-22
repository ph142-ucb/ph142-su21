library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p17a
  points: 0
- hidden: false
  name: p17b
  points: 0
name: p17

"

test_that("p17a", {
  expect_true(p17 > 0 & p17 < 1)
  print("Checking: range of p17")
})

test_that("p17b", {
  expect_true(all.equal(p17, pnorm(1.77, 0, 1) - pnorm(-2.25, 0, 1), tol = 0.01) )
  print("Checking: value of p17")
})
