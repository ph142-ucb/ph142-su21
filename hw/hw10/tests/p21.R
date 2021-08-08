library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p19
  points: 1
name: p21

"

test_that("p19", {
  expect_true(all.equal(p19, 2.877213, tol = 0.001))
  print("Checking: test statistic to 3 decimal places")
})
