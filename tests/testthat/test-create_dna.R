test_that("create_dna generates a DNA sequence of the correct input length", {
  expected_length <- 50
  dna <- create_dna(length=expected_length)
  testthat::expect_equal(nchar(dna),expected_length)
})
