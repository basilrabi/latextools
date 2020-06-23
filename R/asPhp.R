#' Convert number to Philippine Peso
#'
#' Converts a numeric into Philippine Peso
#' @param x a numeric vector or matrix
#' @return a character vector or matrix of formatted decimals as Philippine Peso
#' @export asPhP
asPhP <- function(x) {
  out <- paste0("PhP~", asDec(x))
  return(out)
}

#' Convert number to Philippine Peso with Words
#'
#' Converts a number into Philippine Peso with words
#' @param x a number
#' @return a character of formatted decimals as Philippine Peso
#'   with words
#' @export asPhPFull
#' @importFrom english words
asPhPFull <- function(x) {
  figure <- paste0("(PhP~", asDec(x), ")")
  peso <- as.integer(x)
  centavo <- as.integer((x - peso) * 100)
  peso <- toupper(english::words(peso))
  out <- sprintf("%s", peso)
  if (centavo > 0)
    out <- sprintf("%s and %d/100", out, centavo)
  out <- sprintf("%s PESOS %s", out, figure)
  return(out)
}
