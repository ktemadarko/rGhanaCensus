test_that("create_district_literacy_df works correctly with test data", {
  test_data <- readRDS(test_path("data-for-testing", "two_districts_literacy_data_example.rds"))

  # Test for Kumasi Metropolitan
  kumasi_data <- create_district_literacy_df(
    name_of_district = "Kumasi Metropolitan",
    census_year = 2010,
    total_literate_population = 800000,
    total_not_literate_population = 200000,
    number_literate_males = 450000,
    number_literate_females = 350000
  )

  expect_equal(nrow(kumasi_data), 3)
  expect_equal(ncol(kumasi_data), 10)
  expect_equal(kumasi_data$Region_Name, c("Ashanti", "Ashanti", "Ashanti"))
  expect_equal(kumasi_data$District_Name, c("Kumasi Metropolitan",
                                            "Kumasi Metropolitan",
                                            "Kumasi Metropolitan"))

  expect_equal(kumasi_data$Literate_Population, test_data$Literate_Population[1:3])
  expect_equal(kumasi_data$Not_Literate_Population, test_data$Not_Literate_Population[1:3])
  expect_equal(kumasi_data$Population, test_data$Population[1:3])
  expect_equal(kumasi_data$District_Name, as.character(test_data$District_Name[1:3]))

  # Test for Obuasi Municipal
  obuasi_data <- create_district_literacy_df(
    name_of_district = "Obuasi Municipal",
    census_year = 2010,
    total_literate_population = 150000,
    total_not_literate_population = 50000,
    number_literate_males = 80000,
    number_literate_females = 70000
  )

  expect_equal(nrow(obuasi_data), 3)
  expect_equal(ncol(obuasi_data), 10)
  expect_equal(obuasi_data$Region_Name, c("Ashanti", "Ashanti", "Ashanti"))
  expect_equal(obuasi_data$District_Name, c("Obuasi Municipal",
                                            "Obuasi Municipal",
                                            "Obuasi Municipal"))

  expect_equal(obuasi_data$Literate_Population, test_data$Literate_Population[4:6])
  expect_equal(obuasi_data$Not_Literate_Population, test_data$Not_Literate_Population[4:6])
  expect_equal(obuasi_data$Population, test_data$Population[4:6])
  expect_equal(obuasi_data$District_Name, as.character(test_data$District_Name[4:6]))
})

