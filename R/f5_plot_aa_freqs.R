

#' Title: Plotting amino acid frequency
#'
#' @import ggplot2
#' @import From stringr str_split boundary str_count
#'
#' @param aa_sequence An amino acid seqence of any length.
#'
#' @return Returns colored box plot with counts for each appearing amino acid.
#' @export
#'
#' @examples plot_aa_freqs("AGSLYVDHK")
#'

plot_aa_freqs <- function(aa_sequence){


  aa_names <- aa_sequence |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |> # Split amino acid string into list of individual characters
    unique()  # Remove repeating characters


  counts <- sapply(aa_names, function(amino_acid) stringr::str_count(string = aa_sequence, pattern =  amino_acid)) |>
    as.data.frame() # Make dataframe containing counts of unique amino acids

  colnames(counts) <- c("Counts") # Naming column in dataframe
  counts[["aa_sequence"]] <- rownames(counts) # Naming rows after after corresponding unique amino acids

  plot <- counts |> # Plot the found amino acid frequencies into box plot
    ggplot2::ggplot(ggplot2::aes(x = aa_sequence, y = Counts, fill = aa_sequence)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(plot)
}



