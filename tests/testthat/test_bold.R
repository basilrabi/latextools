library(latextools)

test_that("bold works",{
  expect_equal(bold("A"), "\\textbf{A}")
  expect_equal(bold(NA), "\\textbf{NA}")
})
