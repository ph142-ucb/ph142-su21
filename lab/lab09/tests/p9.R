library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p9a
  points: 0.6666666666666666
- hidden: false
  name: p9b
  points: 0.6666666666666666
- hidden: false
  name: p9c
  points: 0.6666666666666666
name: p9

"

test_that("p9a", {
  expect_true(conf_int[1] < conf_int[2])
  print("Checking: order of inputs")
})

test_that("p9b", {
  expect_true(all.equal(conf_int[1], -2.560568, tol = 0.001))
  print("Checking: value of lowerbound to at least 3 decimals")
})

test_that("p9c", {
  expect_true(all.equal(conf_int[2], 3.062968, tol = 0.001))
  print("Checking: value of upperbound to at least 3 decimals")
})
