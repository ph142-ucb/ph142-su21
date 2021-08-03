library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p14
  points: 1
name: p14

"

test_that("p14", {
  expect_true(p14 == "A 95% CI will not contain 0, but a 99% CI will.")
  print("Checking: selection")
})
