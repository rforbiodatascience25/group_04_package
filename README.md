
<!-- README.md is generated from README.Rmd. Please edit that file -->

# dogmolr

<!-- badges: start -->
<!-- badges: end -->

The goal of dogmolr is to represent the central dogma of molecular
biology.

## Installation

You can install the development version of dogmolr from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("rforbiodatascience24/group_04_package")
```

### Introduction

The package `dogmolr` imitates the steps of the central dogma of
molecular biology by functions that mimic the steps in the translation
of DNA to amino acids.

Specifically what is covered is the steps of transcription and
translation. By using the package, it is possible to generate a DNA
sequence and end op with a box plot showing the recurrences of the amino
acids in the corresponding amino acid sequence.

The different functions in the package are meant to be used in a step by
step fashion: 1. sample_nt_seq 2. dna_to_rna 3. r2c 4. transl_RNA_2_AA
5. plot_aa_freqs.

First, a DNA sequence is generated and subsequently transcribed to RNA.
The RNA sequence is then split by another function into codons. The
codons are then translated to amino acids and lastly the frequencies of
each appertaining amino acid in the generated peptide sequence is
plotted in a bar plot. The package dependencies `ggplot2` and `stringr`
were added by the `usethis::usepackage()`. Though it would be nice not
to include any dependencies at all due to potential conflicts of package
versions we need to in this package to manipulate the strings and to
make proper plots.

The stringr functions were loaded in NAMESPACE via e.g
`importFrom(stringr,str_count)` so that they were easily callable within
the package code as `str_count()`, instead of having to clarify that
e.g. `stringr::str_count` should be used. This makes for a more readable
code and faster development, especially if the package was larger.

### Functions

## 1: sample_nt_seq

The functions is used to generate a DNA sequences of any length.

# Example of usage

`{r} dna_seq <- sample_nt_seq(30) dna_seq}`

# Input arguments and expected output

Desired length of DNA sequence is taken as input, if non is given the
standard length is set to 99. Expected output is a DNA string of given
length.

## 2: dna_to_rna

Translate a DNA string into an RNA string.

# Example of usage

`{r} RNA_seq <- dna_to_rna(dna_seq) RNA_seq}`

# Input arguments and expected output

The function input is a DNA string of any length. Output is the
resulting RNA string of given DNA segment. Notably, the RNA sequence in
not the complementary RNA sequence.

## 3: r2c

Splits an RNA string into its codons (e.g. ATG, GCC etc.).

# Example of usage

`{r} codons_vec <- r2c(RNA_seq) codons_vec}`

# Input arguments and expected output

A RNA string is given as input, additionally the start position for
translation can be given (defult start position is 1). The output is
codons separated into individual strings.

## 4: transl_RNA_2_AA

Translates list of codons into amino acids

# Example of usage

`{r} AA_seq <- transl_RNA_2_AA(codons_vec) AA_seq}`

# Input arguments and expected output

As input the function requires a string vector containing codons. Output
is a single string of the amino acids translated from the codons.

## 5: plot_aa_freqs

Plots the frequencies of amino acids as a bar plot.

# Example of usage

`{r} AA_freq_plot <- plot_aa_freqs(AA_seq) AA_freq_plot}`

# Input arguments and expected output

Takes a string of amino acids. Returns a bar plot showing frequencies of
the different amino acids in the provided peptide sequence.

### Use cases:

The package can be used to translate a provided RNA sequence into a
peptide sequence and graphically show the frequencies of the different
amino acids in the generated peptide sequence. The user of the package
can chose to generate a random nucleotide sequence of a given length
using the function `sample_nt_seq`. This sequence can the be converted
(not translated) into an RNA-sequence by the function `dna_to_rna`. The
generated RNA sequence can the be split up into codons by the function
`r2c`. These codons can the be translated into the amino acids they
encode for by the function `transl_RNA_2_AA` and the frequency of the
different amino acids in the peptide sequence can be shown in a barplot
using the `plot_aa_freqs` function. It should be noted that the function
`dna_to_rna` does not generate the complimentary RNA sequence of the
input DNA sequence. Thus, the package cannot be used to generate the
peptide sequence from a DNA sequence. For that, one would need to
implement a function which converts the DNA sequence to the
complimentary RNA sequence which is then used in the `rna_to_codons`
function and further downstream. The code could look like this

`{r} dna_to_compl_rna <- function(dna_seq) {   if (!is.character(dna_seq))   { print("Input DNA sequence should be a string")     return(NULL) }   else { dna_seq <- as.character(dna_seq)    dna_vector <- str_split(string = dna_seq, pattern = "")    replacement <- c("A" = "U", "C" = "G", "G" = "C", "T" = "A")    compl_rna <- sapply(dna_vector, FUN = function(x) replacement[x])    complimentary_rna <- paste0(compl_rna, collapse = "")    print(complimentary_rna) } }`

Additionally, one would need to implement a function which detects the
start and stop codons in the provided nucleotide strand as this would
alter the generated peptide sequence.
