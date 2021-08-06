library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p81
  points: 1
name: p8-1

"

test_that("p81", {
  expect_true(all.equal(t_stat, 0.2309, 0.001))
  print("Checking: value of test statistic to at least 3 decimals")
})
