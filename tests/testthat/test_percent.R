library(latextools)

test_that("percent works",{
  expect_equal(percent(1), "100 \\%")
  expect_equal(percent(0.5), "50 \\%")
  expect_equal(percent(0.1052), "10.52 \\%")
  expect_equal(percent(NA), NA)
})