library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p6
  points: 1
name: p6

"

test_that("p6", {
  expect_true(all.equal(round(t_statistics, 2), 1.25, 0.01))
  print("Checking: value of test statistic")
})
