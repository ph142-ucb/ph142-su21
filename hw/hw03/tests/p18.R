library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p18a
  points: 0.25
- hidden: false
  name: p18b
  points: 0.25
- hidden: false
  name: p18c
  points: 0.25
- hidden: false
  name: p18d
  points: 0.25
- hidden: false
  name: p18e
  points: 0.25
- hidden: false
  name: p18f
  points: 0.25
- hidden: false
  name: p18g
  points: 0.25
- hidden: false
  name: p18h
  points: 0.25
name: p18

"

test_that("p18a", {
  expect_true("ggplot" %in% class(p18))
  print("Checking: p18 is a ggplot")
})

test_that("p18b", {
  expect_true(identical(p18$data, insure_subset))
  print("Checking: Using insure_subset")
})

test_that("p18c", {
  expect_true(rlang::quo_get_expr(p18$mapping$x) == "age")
  print("Checking: age is on the x axis")
})

test_that("p18d", {
  expect_true(rlang::quo_get_expr(p18$mapping$y) == "charges")
  print("Checking: charges is on the y axis")
})

test_that("p18e", {
  expect_true("GeomPoint" %in% class(p18$layers[[1]]$geom))
  print("Checking: A scatterplot was made")
})

test_that("p18f", {
  expect_true(length(p18$labels$title) != 0)
  print("Checking: Title added")
})

test_that("p18g", {
  expect_true("GeomAbline" %in% class(p18$layers[[2]]$geom) | "GeomSmooth" %in% class(p18$layers[[2]]$geom))
  print("Checking: A line of best fit has been added")
})

test_that("p18h", {
  expect_true("GeomAbline" %in% class(p18$layers[[3]]$geom) | "GeomSmooth" %in% class(p18$layers[[3]]$geom))
  print("Checking: A second line of best fit has been added")
})
