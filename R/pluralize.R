#' Pluralize a word
#'
#' Converts a word to its plural form
#' @param word a word to be pluralized
#' @param n a number describing the quantity of the word
#' @return the word in plural form if the number is more than one
#' @importFrom hunspell hunspell_check
#' @export pluralize
pluralize <- function(word, n) {
  if (!hunspell::hunspell_check(word))
    stop(paste0("'", word, "' might not be an english word."))

  if (!is.numeric(n))
    stop("n must be numeric")

  if (n > 1) {
    return(paste0(word, 's'))
  } else {
    return(word)
  }
}
