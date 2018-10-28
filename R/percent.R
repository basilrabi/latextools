#' Convert to percent
#'
#' Converts a numeric to a percent format
#' @param x a number
#' @return a character string
#' @export percent
#' @importFrom dplyr "%>%"
percent <- function(x) {
  if (is.na(x))
    return(NA)
  return(round(x * 100, digits = 2) %>% paste("\\%"))
}
