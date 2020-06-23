library(dplyr)
library(latextools)

rate_hauling <- 14.67
rate_receiving <- 14.00
km <- c(1.5, 2.0, 2.5, 3.0, 3.5, 4.0)
cost <- data.frame(km = km) %>%
  dplyr::mutate(rate_hauling = rate_hauling,
                cost_receiving = rate_receiving) %>%
  dplyr::mutate(cost_hauling = rate_hauling * km) %>%
  dplyr::mutate(cost_total = cost_hauling + cost_receiving) %>%
  dplyr::select(km, cost_hauling, cost_receiving, cost_total) %>%
  as.matrix() %>%
  latextools::asDec()

test_that("asDec works",{
  expect_equal(asDec(1000), "1,000.00")
  expect_equal(asDec(1000, digits = 5), "1,000.000 00")
  expect_equal(asDec(NA), "")
  expect_equal(asDec(1000, digits = 0), "1,000")
  expect_equal(cost[,"cost_receiving"], rep("14.00", times = 6))
})
