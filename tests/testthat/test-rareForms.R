library(testthat)
library(checkmate)
context("rareForms")

input_data <- read.csv(system.file("inst/test_datasets/Table_for_rareForms.csv",package="Rare7"))

test_that("Expected data structure",{
  expect_equal(class(input_data),"data.frame")
  expect_true("Species" %in% names(input_data))
  expect_true("Detection_area" %in% names(input_data))
  expect_true("Sample_area" %in% names(input_data))
  expect_true("Abundance" %in% names(input_data))
  expect_true("Habitats" %in% names(input_data))
})



