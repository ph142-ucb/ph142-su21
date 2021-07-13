library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p14a
  points: 0.14285714285714285
- hidden: false
  name: p14b
  points: 0.14285714285714285
- hidden: false
  name: p14c
  points: 0.14285714285714285
- hidden: false
  name: p14d
  points: 0.14285714285714285
- hidden: false
  name: p14e
  points: 0.14285714285714285
- hidden: false
  name: p14f
  points: 0.14285714285714285
- hidden: false
  name: p14g
  points: 0.14285714285714285
name: p14

"

test_that("p14a", {
  expect_true("ggplot" %in% class(p14))
  print("Checking: p14 is a ggplot")
})

test_that("p14b", {
  expect_true(identical(p14$data, insure_subset))
  print("Checking: Using insure_subset")
})

test_that("p14c", {
  expect_true(rlang::quo_get_expr(p14$mapping$x) == "age")
  print("Checking: age is on the x axis")
})

test_that("p14d", {
  expect_true(rlang::quo_get_expr(p14$mapping$y) == "charges")
  print("Checking: charges is on the y axis")
})

test_that("p14e", {
  expect_true("GeomPoint" %in% class(p14$layers[[1]]$geom))
  print("Checking: A scatterplot was made")
})

test_that("p14f", {
  expect_true(length(p14$labels$title) != 0)
  print("Checking: Title added")
})

test_that("p14g", {
  expect_true("GeomAbline" %in% class(p14$layers[[2]]$geom) | "GeomSmooth" %in% class(p14$layers[[2]]$geom))
  print("Checking: A line of best fit has been added")
})
