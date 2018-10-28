library(latextools)

test_that("center works",{
  expect_equal(center("a"), "\\multicolumn{1}{c}{\\textbf{a}}")
  expect_equal(center("a",cols = 2), "\\multicolumn{2}{c}{\\textbf{a}}")
  expect_equal(center("a", pos = "l"), "\\multicolumn{1}{l}{\\textbf{a}}")
  expect_equal(center("a",toBold = FALSE), "\\multicolumn{1}{c}{a}")
  expect_equal(center(NA), "\\multicolumn{1}{c}{\\textbf{NA}}")
})
