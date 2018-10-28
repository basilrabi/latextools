#' to n-th form
#'
#' Convert an integer to n-th format
#' @param x an integer or a number without decimal
#' @return a character string
#' @importFrom dplyr "%>%"
#' @export place
place <- function(x) {
  if (is.na(x))
    return(NA)

  if (!is.numeric(x))
    stop("Argument must be integer.")

  if (is.na(as.logical(all.equal(x, as.integer(x)))))
    stop("Argument must be integer.")

  x <- as.integer(x)

  if (nchar(x) > 3) {
    y <- substr(x, start = nchar(x) - 1, stop = nchar(x)) %>% as.integer()
  } else {
    y <- x
  }

  if (y > 3 & y < 21) {
    pos <- "th"
  } else {

    digit <- substr(x, start = nchar(x), stop = nchar(x))

    if (digit == "1") {
      pos <- "st"
    } else if (digit == "2") {
      pos <- "nd"
    } else if (digit == "3") {
      pos <- "rd"
    } else {
      pos <- "th"
    }
  }

  paste0(x, "$^\\text{", pos, "}$")
}
