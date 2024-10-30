#Function 3
#' Title: Convert your RNA string into sets of codons
#'
#' @param rna_strand This is the RNA sequence
#' @param start =1 This is by default
#'
#' @return Sets of Codons
#' @export
#'
#' @examples r2c("ABCDEFGHIJKL")
r2c <- function(rna_strand, start = 1){
  rna_length <- nchar(rna_strand) #Gives the number of characters in the strand
  codons <- substring(rna_strand,
                      first = seq(from = start, to = rna_length-3+1, by = 3),
                      last = seq(from = 3+start-1, to = rna_length, by = 3))
  return(codons)
}
