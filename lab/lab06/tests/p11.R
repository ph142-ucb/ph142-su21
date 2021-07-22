library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p11a
  points: 0
- hidden: false
  name: p11b
  points: 0
name: p11

"

test_that("p11a", {
  expect_true(p11 > 3400 & p11 < 3500)
  print("Checking: range of p11")
})

test_that("p11b", {
  expect_true(all.equal(p11,  qnorm(0.9, mean = 2750, sd = 560), tol = 0.01) )
  print("Checking: value of p11")
})
