#' Generate a Random DNA sequence
#'
#' Creates a single string that represents a random DNA sequence given a specific length
#'
#' @param length Specify the length of the dna
#'
#' @returns A character string
#' @export
#'
#' @examples
#' create_dna(length=15)
create_dna <- function(length) {
  nucleotides <- sample(c("A", "T", "G", "C"), size = length, replace = TRUE)
  sequence <- paste0(nucleotides, collapse = "")
  return(sequence)
}
