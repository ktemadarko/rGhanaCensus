## code to prepare `Atwima_Nwabiagya_2010_literacy_rates` dataset goes here

#' ---
#' date: "`r format(Sys.Date())`"
#' output:
#'   html_document:
#'     keep_md: TRUE
#' ---
## Using a function in this package `rGhanaCensus`
Atwima_Nwabiagya_2010_literacy_rates <- create_district_literacy_df(
  name_of_region = "Ashanti",
  name_of_district = "Atwima Nwabiagya",
  census_year = 2010,
  total_literate_population = 56068,
  total_not_literate_population = 23306,
  number_literate_males = 31502,
  number_literate_females = 24566
)

usethis::use_data(Atwima_Nwabiagya_2010_literacy_rates, overwrite = TRUE)
devtools::session_info()
