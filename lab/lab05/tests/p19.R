library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p19a
  points: 0.5
- hidden: false
  name: p19b
  points: 0.5
name: p19

"

test_that("p19a", {
  expect_true(p19 > 0 & p19 < 100)
  print("Checking: range of p19")
})

test_that("p19b", {
  expect_true(all.equal(p19, round(pnorm(55, mean = 50, sd = 5, lower.tail=FALSE)*100, 2), tol = 0.01) )
  print("Checking: value of p19")
})
