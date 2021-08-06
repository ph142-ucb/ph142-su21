library(testthat)

test_metadata = "
cases:
- hidden: false
  name: p10a
  points: 0.2
- hidden: false
  name: p10b
  points: 0.2
- hidden: false
  name: p10c
  points: 0.2
- hidden: false
  name: p10d
  points: 0.2
- hidden: false
  name: p10e
  points: 0.2
name: p10

"

test_that("p10a", {
  expect_true("ggplot" %in% class(plot10))
  print("Checking: ggplot defined")
})

test_that("p10b", {
  expect_true(identical(plot10$data, nhanes))
  print("Checking: nhanes data used")
})

test_that("p10c", {
  expect_true(rlang::quo_get_expr(plot10$mapping$x) == "bmicat")
  print("Checking:cmicat on x axis")
})

test_that("p10d", {
  expect_true(rlang::quo_get_expr(plot10$mapping$y) == "bpxsy1")
  print("Checking: systolic blood pressure on y axis")
})

test_that("p10e", {
  expect_true("GeomBoxplot" %in% class(plot10$layers[[1]]$geom))
  print("Checking: boxplot created")
})
