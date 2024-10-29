#' Convert DNA sequence to RNA sequence
#'
#' @param dna_sequence DNA sequence intended for conversion.
#'
#' @return RNA sequence of converted DNA sequence. Note the RNA sequence is NOT the sequence complementary to the DNA sequence.
#' @export
#'
#' @examples dna1 <- c("AAATTTCCTTGG")
#' rna1 <- convert_to_rna(dna_sequence = dna1)
#' print(rna1)
#'
#'
#' dna2 <- c("AATTCCTTCCTT")
#' rna2 <- convert_to_rna(dna_sequence = dna2)
#' print(rna2)
#'
#'
convert_to_rna <- function(dna_sequence) {
  rna_sequence <- gsub("T", "U", dna_sequence)
  return(rna_sequence)
}
