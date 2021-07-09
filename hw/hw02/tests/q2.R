library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p2
  points: 1
name: q2

"

test_that("p2", {
  expect_true(p2 == "skewed right")
  print("Checking: Is p2 correct")
})
