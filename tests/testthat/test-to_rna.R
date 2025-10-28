test_that("to_rna() changes T for U", {
  expect_equal(to_rna("ATGC"), "AUGC")
  expect_equal(to_rna("TTTT"), "UUUU")
  expect_equal(to_rna("GATTACA"), "GAUUACA")
})
