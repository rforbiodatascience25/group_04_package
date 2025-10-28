test_that("split_codons see if it divides the aminoacids in groups of 3", {
  test_sequence <- "AAABBBCCC"
  test1 <- split_codons(test_sequence,start=1)
  testthat::expect_equal(test1,c("AAA", "BBB", "CCC"))
})
