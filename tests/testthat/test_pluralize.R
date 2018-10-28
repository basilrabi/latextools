library(latextools)

test_that("pluralize works",{
  expect_equal(pluralize("ton", 1), "ton")
  expect_equal(pluralize("ton", 10), "tons")
  expect_error(pluralize("sangkigoy", 10))
  expect_error(pluralize("truck", NA))
})
