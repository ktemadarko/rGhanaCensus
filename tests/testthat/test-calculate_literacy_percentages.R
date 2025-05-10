test_that("calculate_literacy_percentages works correctly", {

  literacy_data <- readRDS(test_path("data-for-testing", "test_literacy_data_example.rds"))
  result_df <- calculate_literacy_percentages(literacy_data)

  expect_equal(result_df$Literate_Percentage, c(75, 200/3, 90))
  expect_equal(result_df$Not_Literate_Percentage, c(25, 100/3, 10))
  expect_equal(result_df$Population, c(200, 300, 200))
  expect_equal(result_df$Total_Percentage, rep(100, 3))
})
