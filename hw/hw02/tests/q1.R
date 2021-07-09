library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p1a
  points: 0.3333333333333333
- hidden: false
  name: p1b
  points: 0.3333333333333333
- hidden: false
  name: p1c
  points: 0.3333333333333333
name: q1

"

test_that("p1a", {
  expect_true(aa == "CS_rate")
  print("Checking: Is the answer to a correct")
})

test_that("p1b", {
  expect_true(bb == 100)
  print("Checking: Is the answer to b correct")
})

test_that("p1c", {
  expect_true(cc == "CS_rate_100")
  print("Checking: Is the answer to c correct")
})
