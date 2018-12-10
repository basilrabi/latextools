library(latextools)

test_that("percent works",{
  expect_equal(percent(1), "100.00~\\%")
  expect_equal(percent(1, digits = 0), "100~\\%")
  expect_equal(percent(0.5), "50.00~\\%")
  expect_equal(percent(0.1052), "10.52~\\%")
  expect_equal(percent(NA), NA)
})
