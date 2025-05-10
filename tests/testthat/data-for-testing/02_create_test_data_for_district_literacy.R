# Test LITERACY data frame for two districts
two_districts_literacy_data_example <- data.frame(
  Region_Name = c("Ashanti", "Ashanti", "Ashanti",
                  "Ashanti", "Ashanti", "Ashanti"),
  District_Name = c("Kumasi Metropolitan", "Kumasi Metropolitan",
                    "Kumasi Metropolitan", "Obuasi Municipal",
                    "Obuasi Municipal", "Obuasi Municipal"),
  Census_Year = c(2010, 2010, 2010, 2010, 2010, 2010),
  Gender = c("Total", "Male", "Female", "Total", "Male", "Female"),
  Literate_Population = as.numeric(c(800000, 450000, 350000,
                                     150000, 80000, 70000)),
  Not_Literate_Population = as.numeric(c(200000, NA, NA, 50000, NA, NA)),
  Literate_Percentage = as.numeric(c(NA, NA, NA, NA, NA, NA)),
  Not_Literate_Percentage = as.numeric(c(NA, NA, NA, NA, NA, NA)),
  Total_Percentage = as.numeric(c(NA, NA, NA, NA, NA, NA)),
  Population = as.numeric(c(1000000, NA, NA, 200000, NA, NA))
)

# Save the modified test data
saveRDS(test_literacy_data_example,
  file = "./tests/testthat/data-for-testing/two_districts_literacy_data_example.rds"
)
