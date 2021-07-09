library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p3
  points: 1
name: q3

"

test_that("p3", {
  expect_true(p3 == "larger than")
  print("Checking: Is p3 correct")
})
