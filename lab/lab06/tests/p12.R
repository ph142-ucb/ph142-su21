library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p12a
  points: 0
- hidden: false
  name: p12b
  points: 0
name: p12

"

test_that("p12a", {
  expect_true(all.equal(p12[1], qnorm(0.25, mean = 2750, sd = 560), tol = 0.01)) 
  print("Checking: first value of p12")
})

test_that("p12b", {
  expect_true(all.equal(p12[2], qnorm(0.75, mean = 2750, sd = 560), tol = 0.01)) 
  print("Checking: second value of p12")
})
