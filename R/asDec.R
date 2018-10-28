#' Convert to formated decimal
#'
#' Converts a numeric into pretty decimals
#' @param x a numeric vector
#' @param digits number of decimal digits to be used
#' @return a character vector of formatted decimals
#' @export asDec
asDec <- function(x, digits = 2L) {
  out <- round(x = x, digits = digits)
  out <- format(x              = out,
                big.mark       = ",",
                scientific     = FALSE,
                nsmall         = digits,
                small.interval = 3L,
                small.mark     = " ")
  out
}
