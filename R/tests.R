#' @import testthat
test_that("Check that the price of the option is correct", {
  # Test that it returns the correct amount
  expect_equal(pricer(put_call='P') == 100, TRUE)
 
})


test_that("Test that hedger returns the deltas.", {
  # Test that it returns the correct amount
  expect_equal(hedger(price = 100,sigma=.16, mu=100) == 0.5, TRUE)
  
})
