library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p15a
  points: 0
- hidden: false
  name: p15b
  points: 0
name: p15

"

test_that("p15a", {
  expect_true(p15 > 0 & p15 < 1)
  print("Checking: range of p15")
})

test_that("p15b", {
  expect_true(all.equal(p15, pnorm(-2.25, 0, 1, lower.tail = F), tol = 0.01) )
  print("Checking: value of p15")
})
