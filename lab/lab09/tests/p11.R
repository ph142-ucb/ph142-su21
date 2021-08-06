library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p11a
  points: 0.25
- hidden: false
  name: p11b
  points: 0.25
- hidden: false
  name: p11c
  points: 0.25
- hidden: false
  name: p11d
  points: 0.25
name: p11

"

test_that("p11a", {
  expect_true("ggplot" %in% class(plot11))
  print("Checking: ggplot defined")
})

test_that("p11b", {
  expect_true(identical(plot11$data, nhanes))
  print("Checking: nhanes data used")
})

test_that("p11c", {
  expect_true(rlang::quo_get_expr(plot11$mapping$x) == "bpxsy1")
  print("Checking: blood pressure on x axis on x axis")
})

test_that("p11d", {
  expect_true("FacetGrid" %in% class(plot11$facet) | "FacetWrap" %in% class(plot11$facet))
  print("Checking: facet_wrap or facet_grid used")
})
