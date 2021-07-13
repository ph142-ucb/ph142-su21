library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p24a
  points: 0.16666666666666666
- hidden: false
  name: p24b
  points: 0.16666666666666666
- hidden: false
  name: p24c
  points: 0.16666666666666666
- hidden: false
  name: p24d
  points: 0.16666666666666666
- hidden: false
  name: p24e
  points: 0.16666666666666666
- hidden: false
  name: p24f
  points: 0.16666666666666666
name: p24

"

test_that("p24a", {
  expect_true("ggplot" %in% class(p24))
  print("Checking: p24 is a ggplot")
})

test_that("p24b", {
  expect_true(identical(p24$data, insure_smokers))
  print("Checking: Using insure_smokers")
})

test_that("p24c", {
  expect_true(rlang::quo_get_expr(p24$mapping$x) == "age")
  print("Checking: age is on the x axis")
})

test_that("p24d", {
  expect_true(rlang::quo_get_expr(p24$mapping$y) == "charges")
  print("Checking: charges is on the y axis")
})

test_that("p24e", {
  expect_true("GeomPoint" %in% class(p24$layers[[1]]$geom))
  print("Checking: A scatterplot was made")
})

test_that("p24f", {
  expect_true("FacetWrap" %in% class(p24$facet))
  print("Checking: facet was used")
})
