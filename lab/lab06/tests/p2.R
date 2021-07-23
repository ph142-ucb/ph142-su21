library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p2a
  points: 0.5
- hidden: false
  name: p2b
  points: 0.5
name: p2

"

test_that("p2a", {
  expect_true(p2 > 0 & p2 < 1)
  print("Checking: range of p2")
})

test_that("p2b", {
  expect_true(all.equal(p2, qnorm(0.35, mean = 0, sd = 1, lower.tail=FALSE), tol = 0.01) )
  print("Checking: value of p2")
})
