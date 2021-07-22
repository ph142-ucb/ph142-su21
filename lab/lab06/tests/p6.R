library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p6a
  points: 0.5
- hidden: false
  name: p6b
  points: 0.5
name: p6

"

test_that("p6a", {
  expect_true(p6 > 0 & p6 < 100)
  print("Checking: range of p6")
})

test_that("p6b", {
  expect_true(all.equal(p6, round(pnorm(55, mean = 50, sd = 5, lower.tail=FALSE)*100, 2), tol = 0.01) )
  print("Checking: value of p6")
})
