

#' Title: Plotting amine acid frequency
#'
#' @param aa_sequence an amino acid seqence of any length.
#'
#' @return returns colored box plot with counts for each appearing amino acid.
#' @export
#'
#' @examples plot_aa_freqs("AGSLYVDHK")
#'

plot_aa_freqs <- function(aa_sequence){
  aa_names <- aa_sequence |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()


  counts <- sapply(aa_names, function(amino_acid) stringr::str_count(string = aa_sequence, pattern =  amino_acid)) |>
    as.data.frame()

  colnames(counts) <- c("Counts")
  counts[["aa_sequence"]] <- rownames(counts)

  plot <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = aa_sequence, y = Counts, fill = aa_sequence)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(plot)
}


