library(latextools)

test_that("asPhP works",{
  expect_equal(asPhP(1000), "PhP~1,000.00")
  expect_equal(asPhPFull(14.67), "FOURTEEN and 67/100 PESOS (PhP~14.67)")
  expect_equal(asPhPFull(14.00), "FOURTEEN PESOS (PhP~14.00)")
})
