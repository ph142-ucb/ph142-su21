library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p22a
  points: 0
- hidden: false
  name: p22b
  points: 0
name: p22

"

test_that("p22a", {
  expect_true(p22 > 2300 & p22 < 2400)
  print("Checking: range of p22")
})

test_that("p22b", {
  expect_true(all.equal(p22,  qnorm(0.25, mean = 2750, sd = 560), tol = 0.01) )
  print("Checking: value of p22")
})
