## code to prepare `Ahafo_Ano_North_2010_literacy_rates` dataset goes here

#' ---
#' date: "`r format(Sys.Date())`"
#' output:
#'   html_document:
#'     keep_md: TRUE
#' ---
## Using a function in this package `rGhanaCensus`
Ahafo_Ano_North_2010_literacy_rates <- new_literacy_data(
  name_of_region = "Ashanti",
  name_of_district = "Ahafo Ano North",
  census_year = 2010,
  total_literate_population = 46342,
  total_not_literate_population = 18536,

  number_not_literate_males = 7608,
  number_literate_males = 25309,

  number_not_literate_females = 10928,
  number_literate_females = 21033
)

usethis::use_data(Ahafo_Ano_North_2010_literacy_rates, overwrite = TRUE)
sessioninfo::session_info()
