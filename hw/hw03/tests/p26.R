library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p26a
  points: 0.25
- hidden: false
  name: p26b
  points: 0.25
- hidden: false
  name: p26c
  points: 0.25
- hidden: false
  name: p26d
  points: 0.25
- hidden: false
  name: p26e
  points: 0.25
- hidden: false
  name: p26f
  points: 0.25
- hidden: false
  name: p26g
  points: 0.25
- hidden: false
  name: p26h
  points: 0.25
- hidden: false
  name: p26i
  points: 0.25
- hidden: false
  name: p26j
  points: 0.25
- hidden: false
  name: p26k
  points: 0.25
- hidden: false
  name: p26l
  points: 0.25
name: p26

"

test_that("p26a", {
  expect_true(class(normal_mod) == "lm")
  print("Checking: normal_mod is a linear model")
})

test_that("p26b", {
  expect_true("age" %in% names(normal_mod$model))
  print("Checking: age is in the overweight_mod")
})

test_that("p26c", {
  expect_true("charges" %in% names(normal_mod$model))
  print("Checking: charges is in the overweight_mod")
})

test_that("p26d", {
  expect_true(all.equal(normal_mod$coefficients[[2]], 246.1367, tol = 0.01))
  print("Checking: slope value in normal_mod")
})

test_that("p26e", {
  expect_true(class(overweight_mod) == "lm")
  print("Checking: overweight_mod is a linear model")
})

test_that("p26f", {
  expect_true("age" %in% names(overweight_mod$model))
  print("Checking: age is in the overweight_mod")
})

test_that("p26g", {
  expect_true("charges" %in% names(overweight_mod$model))
  print("Checking: charges is in the overweight_mod")
})

test_that("p26h", {
  expect_true(all.equal(overweight_mod$coefficients[[2]], 264.1862, tol = 0.01))
  print("Checking: slope value in overweight_mod")
})

test_that("p26i", {
  expect_true(class(obese_mod) == "lm")
  print("Checking: obese_mod is a linear model")
})

test_that("p26j", {
  expect_true("age" %in% names(obese_mod$model))
  print("Checking: age is in the obese_mod")
})

test_that("p26k", {
  expect_true("charges" %in% names(obese_mod$model))
  print("Checking: charges is in the obese_mod")
})

test_that("p26l", {
  expect_true(all.equal(obese_mod$coefficients[[2]], 281.1528, tol = 0.01))
  print("Checking: slope value in obese_mod")
})
