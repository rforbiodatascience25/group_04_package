test_that("to_protein translates codons correctly", {
  expect_equal(
    to_protein(c("ACU", "UUU", "UGG", "UAA")),
    "TFW_"
  )
})
