library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p13a
  points: 0.5
- hidden: false
  name: p13b
  points: 0.5
- hidden: false
  name: p13c
  points: 0.5
- hidden: false
  name: p13d
  points: 0.5
name: p13

"

test_that("p13a", {
  expect_true("aov" %in% class(p13))
  print("Checking: aov function used")
})

test_that("p13b", {
  expect_true(p13$terms[[2]] == "bpxsy1")
  print("Checking: formula syntax")
})

test_that("p13c", {
  expect_true(p13$terms[[3]] == "bmicat")
  print("Checking: formula syntax")
})

test_that("p13d", {
  expect_true(all.equal(unname(p13$coefficients[2]), -2.088294, tol = 0.001))
  print("Checking: values")
})
