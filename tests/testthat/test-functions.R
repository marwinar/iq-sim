test_that("simulating data works", {
  data <- simulate_data_with_reliability(100, .9, m = 100, sd = 15)
  expect_equal(dim(data), c(100, 3))
  expect_gt(mean(data$true_scores), 80)
  expect_lt(mean(data$true_scores), 120)
  
})
