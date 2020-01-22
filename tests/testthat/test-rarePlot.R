library(testthat)
library(checkmate)
context("rarePlot")

input_data1 <- read.csv(system.file("inst/test_datasets/Test_data.csv",package="Rare7"))
input_data2 <- read.csv(system.file("inst/test_datasets/Table_for_rarePlot.csv",package="Rare7"))
locality <- "Site6"
  
test_that("Expected data structure",{
  expect_equal(class(input_data1),"data.frame")
  expect_equal(class(input_data2),"data.frame")
  expect_equal(class(locality),"character")
})
