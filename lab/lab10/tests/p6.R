library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p6
  points: 2
name: p6

"

test_that("p6", {
  expect_true(toupper(p6) == "QQ")
  print("Checking: answer for plot type")
})
