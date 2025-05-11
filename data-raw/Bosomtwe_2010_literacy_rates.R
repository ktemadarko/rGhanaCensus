## code to prepare `Bosomtwe_2010_literacy_rates` dataset goes here

#' ---
#' date: "`r format(Sys.Date())`"
#' output:
#'   html_document:
#'     keep_md: TRUE
#' ---
#'
#' **Cleaning history**
#' * 11th May, 2025
#' This script is to scrape literacy data for the Bosomtwe district
#'
#' * 11th May, 2025 evening
#' Replaced the create_district_literacy_df with the function new_literacy_data
#' which creates a dataframe which is a s3 object

## Using a function in this package `rGhanaCensus`
Bosomtwe_2010_literacy_rates <- new_literacy_data(
  name_of_region = "Ashanti",
  name_of_district = "Bosomtwe",
  census_year = 2010,
  total_literate_population = 54957,
  total_not_literate_population = 10128,
  number_literate_males = 27641,
  number_literate_females = 27316,
  number_not_literate_males = 2582,
  number_not_literate_females = 7546
)

usethis::use_data(Bosomtwe_2010_literacy_rates, overwrite = TRUE)
devtools::session_info()
