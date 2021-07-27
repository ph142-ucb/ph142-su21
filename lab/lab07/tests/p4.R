library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p4
  points: 1
name: p4

"

test_that("p4", {
  expect_true(sampleSize_answer == "c")
  print("Checking: answer to problem 4")
})
