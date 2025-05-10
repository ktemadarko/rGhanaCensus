test_literacy_data_example <- data.frame(
  Literate_Population = c(150, 200, 180),
  Not_Literate_Population = c(50, 100, 20)
)

test_literacy_data_example$Population = test_literacy_data_example$Literate_Population +
  test_literacy_data_example$Not_Literate_Population

saveRDS(test_literacy_data_example,
  file = "./tests/testthat/data-for-testing/test_literacy_data_example.rds"
)
