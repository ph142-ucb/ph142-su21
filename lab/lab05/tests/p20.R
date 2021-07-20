library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p20a
  points: 0.5
- hidden: false
  name: p20b
  points: 0.5
name: p20

"

test_that("p20a", {
  expect_true(p20 > 0 & p20 < 100)
  print("Checking: range of p20")
})

test_that("p20b", {
  expect_true(all.equal(p20, round((pnorm(55, mean = 50, sd = 5) - pnorm(40, mean = 50, sd = 5))*100, 2), tol = 0.01) )
  print("Checking: value of p20")
})
