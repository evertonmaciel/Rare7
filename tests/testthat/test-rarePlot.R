library(testthat)
library(checkmate)
context("rarePlot")

input_data1 <- readRDS(system.file("inst/test_datasets/Test_data",package="Rare7"))
input_data2 <- readRDS(system.file("inst/test_datasets/Table_for_rarePlot",package="Rare7"))
locality <- "Site6"
  
test_that("Expected data structure",{
  expect_equal(class(input_data1),"data.frame")
  expect_equal(class(input_data2),"data.frame")
  expect_equal(class(locality),"character")
})
