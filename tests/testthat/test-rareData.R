library(testthat)
library(checkmate)
context("rareData")

input_data <- readRDS(system.file("inst/test_datasets/Test_data",package="Rare7"))

test_that("Expected data structure",{
  expect_equal(class(input_data),"data.frame")
  expect_true("species" %in% names(input_data))
  expect_true("lat" %in% names(input_data))
  expect_equal(class(input_data$lat),"numeric")
  expect_true("NumIndiv" %in% names(input_data))
  expect_true("habitat" %in% names(input_data))
})
