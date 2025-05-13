## code to prepare `Amansie_West_2010_literacy_rates` dataset goes here

#' ---
#' date: "`r format(Sys.Date())`"
#' output:
#'   html_document:
#'     keep_md: TRUE
#' ---

## Using a function in this package `rGhanaCensus`
Amansie_West_2010_literacy_rates <- new_literacy_data(
  name_of_region = "Ashanti",
  name_of_district = "Atwima West",
  census_year = 2010,
  total_literate_population = 69003,
  total_not_literate_population = 22234,
  number_literate_males = 37888,
  number_not_literate_males = 7555,
  number_literate_females = 31115,
  number_not_literate_females = 14679
)

usethis::use_data(Amansie_West_2010_literacy_rates, overwrite = TRUE)
sessioninfo::session_info()
