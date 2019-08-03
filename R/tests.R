#' @import testthat
test_that("Check that the price of the option is correct", {
  # fail to reject null hypothesis 
  expect_equal(option_pricer() == 100, TRUE)
})