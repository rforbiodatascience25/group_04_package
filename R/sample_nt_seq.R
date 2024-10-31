#' Title: Sampeling nucleotide sequence
#'
#' @param seq_length desired length of seqence
#'
#' @return randomly generates nucleotide sequence of specified length
#' @export
#'
#' @examples sample_nt_seq(6)  # Expected output: "GTAATT"
#'
#'

sample_nt_seq <- function(seq_length){
  sample_nt <- sample(c("A", "T", "G", "C"), size = seq_length, replace = TRUE)
  nt_seq <- paste0(sample_nt, collapse = "")
  return(nt_seq)
}

