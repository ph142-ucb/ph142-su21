library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p15a
  points: 0.5
- hidden: false
  name: p15b
  points: 0.5
name: p15

"

test_that("p15a", {
  expect_true(p15 > 0 & p15 < 1)
  print("Checking: range of p15")
})

test_that("p15b", {
  expect_true(all.equal(p15, qnorm(0.35, mean = 0, sd = 1, lower.tail=FALSE), tol = 0.01) )
  print("Checking: value of p15")
})
