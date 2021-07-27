library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p9a
  points: 0.5
- hidden: false
  name: p9b
  points: 0.5
name: p9

"

test_that("p9a", {
  expect_true(p9 > 0 & p9 < 1)
  print("Checking: range of p9")
})

test_that("p9b", {
  expect_true(all.equal(p9,  0.977582, tol = 0.001))
  print("Checking: value of p9")
})
