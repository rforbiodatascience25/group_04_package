test_that("test that plot_aa_freqs returns a plot", {
  expect_s3_class( plot_aa_freqs("AGSLYVDHK"), "gg")})
