#' aa_count
#'
#' @param Amino_acid A character string containing a single amino acid sequence.
#' @param Unique_aa Set of unique amino acids present
#'
#'
#' @returns A ggplot object showing the frequency of each amino acid in the input sequence.
#' @export
#'
#' @examples
#' aa_count("ACDEFGHIKLMNPQRSTVWY")
#' aa_count("AAAAAGGGCCCTTT")
aa_count <- function(Amino_acid){
  unique_aa <- Amino_acid |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  counts <- sapply(unique_aa, function(amino_acid) stringr::str_count(string = Amino_acid, pattern =  amino_acid)) |>
    as.data.frame()

  colnames(counts) <- c("Counts")
  counts[["Amino_acid"]] <- rownames(counts)

  g <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = Amino_acid, y = Counts, fill = Amino_acid)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(g)
}
