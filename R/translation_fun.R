translation_RNA_2_AA <- function(codons){
  AA_seq <- paste0(codons[codons], collapse = "")
  return(AA_seq)
}
