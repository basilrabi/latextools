#' Center the table cell horizontally
#'
#' Center the cell inside the table using the multicolumn macro
#' @param x a character vector
#' @param toBold logical value whether bold face fonts will be applied
#' @param cols integer value indicating the number of columns spanned
#' @param pos horizontal alignment of in the multicolumn macro
#' @export center
center <- function(x, toBold = TRUE, cols = 1, pos = "c") {
  if (toBold)
    x <- bold(x)
  paste0("\\multicolumn{", cols, "}{", pos, "}{", x, "}")
}
