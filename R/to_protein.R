#' to_protein
#'
#' @param codons Three-letter sequences of RNA
#'
#' @returns It returns the translated protein
#' @export
#'
#' @examples
#' to_protein(c("ACU", "UUU", "UGG", "UAA"))
to_protein <- function(codons){
  protein <- paste0(genetic_code[codons], collapse = "")
  return(protein)
}
