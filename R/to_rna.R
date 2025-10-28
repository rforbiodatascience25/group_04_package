#' Convert DNA sequence to RNA
#'
#' This function takes a DNA sequence as input and converts it into the corresponding RNA sequence
#' by replacing all occurrences of thymine ("T") with uracil ("U").
#'
#' @param dna A character string representing a DNA sequence (e.g., "ATGC").
#'
#' @return A character string representing the corresponding RNA sequence, where all "T" are replaced by "U".
#' @export
#'
#' @examples
#' to_rna("ATGC")
#' to_rna("TTTT")
#' to_rna("GATTACA")
to_rna <- function(dna){
  rna <- gsub("T", "U", dna)
  return(rna)
}
