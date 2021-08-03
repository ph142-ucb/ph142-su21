library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p7
  points: 1
name: p7

"

test_that("p7", {
  expect_true(all.equal(round(p_value, 2), 0.23, 0.01))
  print("Checking: p-value")
})
