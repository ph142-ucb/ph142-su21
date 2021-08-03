library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p13
  points: 1
name: p13

"

test_that("p13", {
  expect_true(p13 == "-1.20 to 0.90")
  print("Checking: selection")
})
