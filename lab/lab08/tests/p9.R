library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p9a
  points: 0.5
- hidden: false
  name: p9b
  points: 0.5
name: p9

"

test_that("p9a", {
  expect_true(pvalue_paired > -0.01 & pvalue_paired < 1)
  print("Checking: range of pvalue_paired")
})

test_that("p9b", {
  expect_true(all.equal(pvalue_paired, 0.00, .01))
  print("Checking: value of pvalue_paired")
})
