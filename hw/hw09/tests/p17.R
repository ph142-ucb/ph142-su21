library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p17a
  points: 2
- hidden: false
  name: p17b
  points: 2
name: p17

"

test_that("p17a", {
  expect_true("lm" %in% class(lm_CA))
  print("Checking: linear model created")
})

test_that("p17b", {
  expect_true(all.equal(r.squared, 0.4071955, tolerance = .001))
  print("Checking: r-squared value to at least 3 decimals")
})
