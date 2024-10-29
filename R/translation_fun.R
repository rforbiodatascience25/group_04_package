#' Translation Function
#'
#' @param codons String vector with codons, separated by a comma
#'
#' @return Returns a string with the amino acid sequence based on the vector given
#' @export
#'
#' @examples input_RNA <- c("AUG", "UUG", "GUG", "GAU", "GCC")
#' translation_RNA_2_AA(input_RNA)
translation_RNA_2_AA <- function(input_codons){
  AA_seq <- paste0(codons[input_codons], collapse = "")
  return(AA_seq)
}
