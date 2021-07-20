library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p16a
  points: 0.5
- hidden: false
  name: p15b
  points: 0.5
name: p16

"

test_that("p16a", {
  expect_true(p16 > 3000 & p16 < 3100)
  print("Checking: range of p16")
})

test_that("p15b", {
  expect_true(all.equal(p16, qnorm(0.25, mean = 3350, sd = 440), tol = 0.01) )
  print("Checking: value of p16")
})
