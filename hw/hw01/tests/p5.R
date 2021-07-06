library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p5
  points: 1
name: p5

"

test_that("p5", {
  expect_true(p5 == "returns all columns that start with sl")
  print("Checking response...")
})
