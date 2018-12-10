#' Convert to percent
#'
#' Converts a numeric to a percent format
#' @param x a number
#' @param latex logical value indicating if output is in latex
#' @param digits number of decimal digits to be used
#' @return a character string
#' @export percent
#' @importFrom dplyr "%>%"
percent <- function(x, latex = TRUE, digits = 2) {
  sep <- " "
  if (latex)
    sep <- "~"

  ifelse(is.na(x), NA, (asDec(x * 100, digits = digits) %>% paste0(sep ,"\\%")))
}
