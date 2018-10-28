library(latextools)

test_that("place works",{
  expect_equal(place(1), "1$^\\text{st}$")
  expect_equal(place(2), "2$^\\text{nd}$")
  expect_equal(place(3), "3$^\\text{rd}$")
  expect_equal(place(4), "4$^\\text{th}$")
  expect_equal(place(20), "20$^\\text{th}$")
  expect_equal(place(21), "21$^\\text{st}$")
  expect_equal(place(22), "22$^\\text{nd}$")
  expect_equal(place(99), "99$^\\text{th}$")
  expect_equal(place(101), "101$^\\text{st}$")
})
