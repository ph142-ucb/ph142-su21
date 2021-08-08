library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p2
  points: 1
name: p2

"

test_that("p2", {
  expect_true(all.equal(p2, 1.092, tol = 0.01))
  print("Checking: value of slope to 2 decimals")
})
