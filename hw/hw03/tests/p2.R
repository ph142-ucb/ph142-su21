library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p2a
  points: 0.5
- hidden: false
  name: p2b
  points: 0.5
name: p2

"

test_that("p2a", {
  expect_true(is.numeric(p2))
  print("Checking: p2 is a number")
})

test_that("p2b", {
  expect_true(p2 == 1338)
  print("Checking: which form of the data-reading function was used ( _ or .)")
})
