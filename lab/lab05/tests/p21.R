library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p21a
  points: 0.5
- hidden: false
  name: p21b
  points: 0.5
name: p21

"

test_that("p21a", {
  expect_true(p21 > 0 & p21 < 100)
  print("Checking: range of p21")
})

test_that("p21b", {
  expect_true(all.equal(p21, round(pnorm(1, mean = 0.8, sd = 0.078, lower.tail=FALSE)*100,2), tol = 0.01) )
  print("Checking: value of p21")
})
