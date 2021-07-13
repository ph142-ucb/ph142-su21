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
  expect_true(is.data.frame(insure_data))
  print("Checking: you've loaded the data into insure_data")
})

test_that("p1b", {
  expect_true(typeof(insure_data$sex) == "character")
  print("Checking: which form of the data-reading function was used ( _ or .)")
})
