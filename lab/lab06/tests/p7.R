library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p7a
  points: 0.5
- hidden: false
  name: p7b
  points: 0.5
name: p7

"

test_that("p7a", {
  expect_true(p7 > 0 & p7 < 100)
  print("Checking: range of p7")
})

test_that("p7b", {
  expect_true(all.equal(p7, round((pnorm(55, mean = 50, sd = 5) - pnorm(40, mean = 50, sd = 5))*100, 2), tol = 0.01) )
  print("Checking: value of p7")
})
