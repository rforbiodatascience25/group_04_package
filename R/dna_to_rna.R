#' Generate RNA sequence from DNA sequence
#'
#' @param dna_sequence The nucleotide composition of the DNA sequence intended for the function.
#'
#' @return The RNA sequence converted from the DNA sequence. Note: The generated RNA sequence is NOT the complementary RNA sequence.
#' @export
#'
#' @examples dna1 <- c("ACCTCTGCCACTTTACG")
#'           dna_to_rna(dna_sequence = dna1)
#'
#'           dna2 <- c("AAACCCTTTCCCTTGGGCCTTT")
#'           dna_to_rna(dna_sequence = dna2)
#'
dna_to_rna <- function(dna_sequence) {
  rna_sequence <- gsub("T", "U", dna_sequence)
  return(rna_sequence)
}
