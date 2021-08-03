library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p4a
  points: 0.5
- hidden: false
  name: p4b
  points: 0.5
name: p4

"

test_that("p4a", {
  expect_true(pvalue_deeks2 > 0 & pvalue_deeks2 < 1)
  print("Checking: range of pvalue_deeks2")
})

test_that("p4b", {
  expect_true(all.equal(pvalue_deeks2, 0.0033, .0001))
  print("Checking: value of pvalue_deeks2")
})
