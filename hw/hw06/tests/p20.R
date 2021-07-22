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
  expect_true(z_stat > 0 & z_stat <= 5)
  print("Checking: range of z_stat")
})

test_that("p20b", {
  expect_true(all.equal(z_stat, 2.385, tol = 0.001))
  print("Checking: value of z_stat")
})
