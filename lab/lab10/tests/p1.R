library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p1a
  points: 0.5
- hidden: false
  name: p1b
  points: 0.5
name: p1

"

test_that("p1a", {
  expect_true(class(p1) %in% c("lm", "glm"))
  print("Checking: p1 a linear model")
})

test_that("p1b", {
  expect_true(round(p1$coefficients[2],2) == 1.09)
  print("Checking: explanatory and response variables")
})
