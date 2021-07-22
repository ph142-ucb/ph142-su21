library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p3a
  points: 0.5
- hidden: false
  name: p3b
  points: 0.5
name: p3

"

test_that("p3a", {
  expect_true(p3 > 3000 & p3 < 3100)
  print("Checking: range of p3")
})

test_that("p3b", {
  expect_true(all.equal(p3, qnorm(0.25, mean = 3350, sd = 440), tol = 0.01) )
  print("Checking: value of p3")
})
