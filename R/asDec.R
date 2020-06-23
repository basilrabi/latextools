#' Convert to formatted decimal
#'
#' Converts a numeric into pretty decimals
#' @param x a numeric vector or matrix
#' @param digits number of decimal digits to be used
#' @return a character vector or matrix of formatted decimals
#' @export asDec
asDec <- function(x, digits = 2L) {
  out <- round(x = x, digits = digits)
  out <- format(x              = out,
                big.mark       = ",",
                scientific     = FALSE,
                nsmall         = digits,
                small.interval = 3L,
                small.mark     = " ")

  if (is.matrix(x)) {
    col_names <- colnames(x)
    row_names <- rownames(x)
    out <- as.vector(out)
  }

  out <- ifelse(grepl(pattern = "NA", out), "", out)

  if (is.matrix(x)) {
    out <- matrix(data = out,
                  nrow = length(row_names),
                  ncol = length(col_names),
                  dimnames = list(row_names, col_names))
  }

  return(out)
}
