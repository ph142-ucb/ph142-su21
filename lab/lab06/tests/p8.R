library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p8a
  points: 0.5
- hidden: false
  name: p8b
  points: 0.5
name: p8

"

test_that("p8a", {
  expect_true(p8 > 0 & p8 < 100)
  print("Checking: range of p8")
})

test_that("p8b", {
  expect_true(all.equal(p8, round(pnorm(1, mean = 0.8, sd = 0.078, lower.tail=FALSE)*100,2), tol = 0.01) )
  print("Checking: value of p8")
})
