library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p8a
  points: 0.5
- hidden: false
  name: p8b
  points: 0.5
name: p8

"

test_that("p8a", {
  expect_true(p8 > 0 & p8 < 1)
  print("Checking: range of p8")
})

test_that("p8b", {
  expect_true(all.equal(p8, 0.003345965, tol = 0.001))
  print("Checking: value of p8")
})
