#' Convert to percent
#'
#' Converts a numeric to a percent format
#' @param x a number
#' @param latex logical value indicating if output is in latex
#' @return a character string
#' @export percent
#' @importFrom dplyr "%>%"
percent <- function(x, latex = TRUE) {
  if (is.na(x))
    return(NA)

  sep <- " "
  if (latex)
    sep <- "~"

  return(round(x * 100, digits = 2) %>% paste0(sep ,"\\%"))
}
