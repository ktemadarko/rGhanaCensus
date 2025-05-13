## code to prepare `Ahafo_Ano_South_2010_literacy_rates` dataset goes here

#' ---
#' date: "`r format(Sys.Date())`"
#' output:
#'   html_document:
#'     keep_md: TRUE
#' ---
## Using a function in this package `rGhanaCensus`
Ahafo_Ano_South_2010_literacy_rates <- new_literacy_data(
  name_of_region = "Ashanti",
  name_of_district = "Ahafo Ano South",
  census_year = 2010,

  total_not_literate_population = 22383,
  total_literate_population = 58949,

  number_not_literate_males = 8503,
  number_literate_males = 32660,

  number_not_literate_females = 13880,
  number_literate_females = 26289
)

usethis::use_data(Ahafo_Ano_South_2010_literacy_rates, overwrite = TRUE)
sessioninfo::session_info()
