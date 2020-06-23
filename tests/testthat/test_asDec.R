library(latextools)

test_that("asDec works",{
  expect_equal(asDec(1000), "1,000.00")
  expect_equal(asDec(1000, digits = 5), "1,000.000 00")
  expect_equal(asDec(NA), "")
  expect_equal(asDec(1000, digits = 0), "1,000")
})
