#' Split a nucleotide sequence into codons
#'
#' @param amino character string representing the nucleotide sequence to split
#' @param start integer specifying the starting position for reading codons (default is 1)
#'
#' @return character vector containing codons (triplets of nucleotides)
#'
#' @examples
#' # Example 1: Standard reading frame
#' split_codons("ATGGCCATTGTAATGGGCCGCTGAAAGGGTGCCCGATAG")
#'
#' # Example 2: Starting from the second nucleotide
#' split_codons("ATGGCCATTGTAATGGGCCGCTGAAAGGGTGCCCGATAG", start = 2)
#'
#' @export
split_codons <- function(amino, start = 1){
  numbers <- nchar(amino)
  codons <- substring(amino,
                      first = seq(from = start, to = numbers-3+1, by = 3),
                      last = seq(from = 3+start-1, to = numbers, by = 3))
  return(codons)
}
