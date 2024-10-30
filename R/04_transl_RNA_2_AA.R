#' Title: Translation of RNA to AA
#'
#' @param input_codons, String vector with codons, separated by a comma (e.g. ATG, GCC etc.)
#'
#' @return Returns corresponding amino acid sequence as a collapsed continuous string
#'
#' @export
#'
#' @examples input_vector <-  c("ATG", "GCC", "UGC", "AAG", "UGG", "CGT")
#' transl_RNA_2_AA(input_vector)

transl_RNA_2_AA <- function(input_codons){
  AA_seq <- paste0(codons[input_codons], collapse = "")
  return(AA_seq)
}
