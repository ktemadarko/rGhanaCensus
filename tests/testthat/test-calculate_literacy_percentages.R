test_that("calculate_literacy_percentages works correctly", {

  literacy_data <- readRDS(test_path("data-for-testing", "test_literacy_data_example.rds"))
  result_df <- calculate_literacy_percentages(literacy_data)

  expect_equal(result_df$Literate_Percentage, c(1.5, 2.0, 1.8))
  expect_equal(result_df$Not_Literate_Percentage, c(0.5, 1.0, 0.2))
  expect_equal(result_df$Population, c(200, 300, 200))
  expect_equal(result_df$Total_Percentage, c(2.0, 3.0, 2.0))
})
