test_that("new_literacy_data constructor works as expected for Kumasi", {
  test_data <- readRDS(test_path("data-for-testing",
                                 "two_districts_literacy_data_example.rds"))

  # Test for Kumasi Metropolitan
  kumasi_literacy <- new_literacy_data(
    name_of_region = "Ashanti",
    name_of_district = "Kumasi Metropolitan",
    census_year = 2010,
    total_literate_population = 800000,
    total_not_literate_population = 200000,
    number_literate_males = 450000,
    number_literate_females = 350000,
    number_not_literate_males = 100000,
    number_not_literate_females = 100000
  )

  # [check] should each expect equal be in its own test_that()??
  expect_s3_class(kumasi_literacy, "literacy_dataframe")
  expect_output(print(kumasi_literacy), "Literacy Data Object")

  expect_equal(nrow(kumasi_literacy$data), 3)
  expect_equal(ncol(kumasi_literacy$data), 11)
  expect_equal(kumasi_data$Region_Name, test_data$Region_Name[1:3])
  expect_equal(kumasi_data$District_Name, test_data$District_Name[1:3])

  expect_equal(kumasi_literacy$data$Literate_Population, test_data$Literate_Population[1:3])
  expect_equal(kumasi_literacy$data$Not_Literate_Population, test_data$Not_Literate_Population[1:3])
  expect_equal(kumasi_literacy$data$Population_literacy, test_data$Population_literacy[1:3])
  expect_equal(kumasi_literacy$data$District_Name, as.character(test_data$District_Name[1:3]))

  expect_equal(kumasi_literacy$data$Population_literacy, kumasi_literacy$data$Population_gender,
               info = "test that the total_population_literacy is equal to total_population_gender")
})


# Test for Obuasi Municipal
test_that("new_literacy_data constructor works as expected for Obuasi", {
  obuasi_literacy <- new_literacy_data(
    name_of_district = "Obuasi Municipal",
    census_year = 2010,
    total_literate_population = 150000,
    total_not_literate_population = 50000,
    number_literate_males = 80000,
    number_literate_females = 70000,
    number_not_literate_males = 25000,
    number_not_literate_females = 25000
  )

  expect_s3_class(obuasi_literacy, "literacy_dataframe")
  expect_output(print(obuasi_literacy), "Literacy Data Object")

  expect_equal(nrow(obuasi_literacy$data), 3)
  expect_equal(ncol(obuasi_literacy$data), 11)
  expect_equal(obuasi_literacy$data$Region_Name, test_data$Region_Name[4:6])
  expect_equal(obuasi_literacy$data$District_Name, test_data$Region_Name[4:6])

  expect_equal(obuasi_literacy$data$Literate_Population, test_data$Literate_Population[4:6])
  expect_equal(obuasi_literacy$data$Not_Literate_Population, test_data$Not_Literate_Population[4:6])
  expect_equal(obuasi_literacy$data$Population_literacy, test_data$Population_literacy[4:6])
  expect_equal(obuasi_literacy$data$District_Name, as.character(test_data$District_Name[4:6]))

  expect_equal(obuasi_literacy$data$Population_literacy, obuasi_literacy$data$Population_gender,
               info = "test that the total_population_literacy is equal to total_population_gender")

})


