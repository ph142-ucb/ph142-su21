library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p18a
  points: 0.5
- hidden: false
  name: p18b
  points: 0.5
name: p18

"

test_that("p18a", {
  expect_true(all.equal(p18[1], qnorm(0.25, mean = 3350, sd = 440), tol = 0.01)) 
  print("Checking: first value of p18")
})

test_that("p18b", {
  expect_true(all.equal(p18[2], qnorm(0.75, mean = 3350, sd = 440), tol = 0.01)) 
  print("Checking: second value of p18")
})
