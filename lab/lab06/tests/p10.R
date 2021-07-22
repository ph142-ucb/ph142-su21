library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p10a
  points: 0
- hidden: false
  name: p10b
  points: 0
name: p10

"

test_that("p10a", {
  expect_true(p10 > 2300 & p10 < 2400)
  print("Checking: range of p10")
})

test_that("p10b", {
  expect_true(all.equal(p10,  qnorm(0.25, mean = 2750, sd = 560), tol = 0.01) )
  print("Checking: value of p10")
})
