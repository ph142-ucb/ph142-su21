library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p4a
  points: 0.5
- hidden: false
  name: p4b
  points: 0.5
name: p4

"

test_that("p4a", {
  expect_true(p4 > 3900 & p4 < 4000)
  print("Checking: range of p4")
})

test_that("p4b", {
  expect_true(all.equal(p4, qnorm(0.90, mean = 3350, sd = 440), tol = 0.01) )
  print("Checking: value of p4")
})
