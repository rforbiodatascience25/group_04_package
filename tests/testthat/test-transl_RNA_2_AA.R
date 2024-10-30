test_that("test that transl_RNA_2_AA gives correct output", {
  expect_equal(transl_RNA_2_AA(c("ATG", "GCC", "UGC", "AAG", "UGG", "CGT")),
               "NAACKWNA")
})
