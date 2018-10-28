#' Bold face
#'
#' Transfrom characters to bold face
#' @param x character vector
#' @return a character vector formatted in bold face in latex
#' @export bold
bold <- function(x) {
  paste0("\\textbf{", x, "}")
}
