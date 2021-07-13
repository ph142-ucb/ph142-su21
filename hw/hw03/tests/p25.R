library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p25a
  points: 0.16666666666666666
- hidden: false
  name: p25b
  points: 0.16666666666666666
- hidden: false
  name: p25c
  points: 0.16666666666666666
- hidden: false
  name: p25d
  points: 0.16666666666666666
- hidden: false
  name: p25e
  points: 0.16666666666666666
- hidden: false
  name: p25f
  points: 0.16666666666666666
name: p25

"

test_that("p25a", {
  expect_true("ggplot" %in% class(p25))
  print("Checking: p25 is a ggplot")
})

test_that("p25b", {
  expect_true(identical(p25$data, insure_smokers))
  print("Checking: Using insure_smokers")
})

test_that("p25c", {
  expect_true(rlang::quo_get_expr(p25$mapping$x) == "age")
  print("Checking: age is on the x axis")
})

test_that("p25d", {
  expect_true(rlang::quo_get_expr(p25$mapping$y) == "charges")
  print("Checking: charges is on the y axis")
})

test_that("p25e", {
  expect_true("GeomPoint" %in% class(p25$layers[[1]]$geom))
  print("Checking: A scatterplot was made")
})

test_that("p25f", {
  expect_true("FacetWrap" %in% class(p25$facet))
  print("Checking: facet was used")
})
