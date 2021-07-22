library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p5a
  points: 0.5
- hidden: false
  name: p5b
  points: 0.5
name: p5

"

test_that("p5a", {
  expect_true(all.equal(p5[1], qnorm(0.25, mean = 3350, sd = 440), tol = 0.01)) 
  print("Checking: first value of p5")
})

test_that("p5b", {
  expect_true(all.equal(p5[2], qnorm(0.75, mean = 3350, sd = 440), tol = 0.01)) 
  print("Checking: second value of p5")
})
