library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p14a
  points: 1
- hidden: false
  name: p14b
  points: 1
name: p14

"

test_that("p14a", {
  expect_true("TukeyHSD" %in% class(p14))
  print("Checking: tukeyHSD function used")
})

test_that("p14b", {
  expect_true(all.equal(p14$bmicat[1,4], 0.8833041, tol = 0.001))
  print("Checking: adjusted p-values")
})
