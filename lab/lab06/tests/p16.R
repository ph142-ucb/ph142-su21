library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p16a
  points: 0
- hidden: false
  name: p16b
  points: 0
name: p16

"

test_that("p16a", {
  expect_true(p16 > 0 & p16 < 1)
  print("Checking: range of p16")
})

test_that("p16b", {
  expect_true(all.equal(p16, pnorm(1.77, 0, 1, lower.tail = F), tol = 0.01) )
  print("Checking: value of p16")
})
