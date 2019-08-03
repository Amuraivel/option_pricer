#' @title pricer
#' @description A function to price options. 
#' @return integer
#' @param put_call Takes a flag for a put or a call, and returns a different price
#' @export
pricer <- function(put_call = 'C'){ 
  if (put_call == 'P') 
    100
  else
    -100
}

#' @title hedger
#' @description Computes deltas for a price hedger based on standard normal distribution
#' @param price Is the current price of the option
#' @param sigma Is the variance of the mean price, mu, in terms of a probability
#' @param mu Mean price of the stock over time
#' @return integer
hedger <- function(price = price, sigma=.16, mu=price){
  pnorm(price, 
        mean = mu,
        sd=abs(mu)*sigma)
}


