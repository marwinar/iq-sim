library(tidyverse)

#' Simulate dataset with true scores, errors and total scores
#'
#' @param n number of rows
#' @param rxx reliability of the test
#' @param m mean
#' @param sd standard deviation
#'
#' @return tibble with columns for true scores, observed scores and errors
#' @export
#'
#' @examples
#' simulate_data_with_reliability(20, .8)
simulate_data_with_reliability <- function(n, rxx, m = 100, sd = 15) {
  true_scores <- rnorm(n, m, sd)
  test1_errors <- rnorm(n, 0, sqrt((1 - rxx) / rxx) * 15)
  test1_scores <- true_scores + test1_errors
  
  tibble(true_scores, test1_scores, test1_errors)
}