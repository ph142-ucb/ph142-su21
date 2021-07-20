library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p24a
  points: 0
- hidden: false
  name: p24b
  points: 0
name: p24

"

test_that("p24a", {
  expect_true(all.equal(p24[1], qnorm(0.25, mean = 2750, sd = 560), tol = 0.01)) 
  print("Checking: first value of p24")
})

test_that("p24b", {
  expect_true(all.equal(p24[2], qnorm(0.75, mean = 2750, sd = 560), tol = 0.01)) 
  print("Checking: second value of p24")
})
