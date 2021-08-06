library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p16
  points: 4
name: p16

"

test_that("p16", {
  expect_true(all.equal(p16, 0.6381187, tolerance = .001))
  print("Checking: value")
})
