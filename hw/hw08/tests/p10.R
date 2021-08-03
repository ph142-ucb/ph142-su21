library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p10
  points: 1
name: p10

"

test_that("p10", {
  expect_true(all.equal(round(p_value_10, 2), 0, 0.01))
  print("Checking: p-value")
})
