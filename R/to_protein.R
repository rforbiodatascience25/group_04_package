#' to_protein
#'
#' @param codons Three-letter sequences of RNA
#'
#' @returns It returns the translated protein
#' @export
#'
#' @examples
#' test_that("to_protein translates codons correctly", {
#'expect_equal(
#'  to_protein(c("ACU", "UUU", "UGG", "UAA")),
#'  "TFW_")})
to_protein <- function(codons){
  protein <- paste0(genetic_code[codons], collapse = "")
  return(protein)
}
