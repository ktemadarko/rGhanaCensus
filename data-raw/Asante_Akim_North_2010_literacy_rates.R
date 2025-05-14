## code to prepare `Asante_Akim_North_2010_literacy_rates` dataset goes here

#' ---
#' date: "`r format(Sys.Date())`"
#' output:
#'   html_document:
#'     keep_md: TRUE
#' ---
## Using a function in this package `rGhanaCensus`
Asante_Akim_North_2010_literacy_rates <- new_literacy_data(
  name_of_region = "Ashanti",
  name_of_district = "Asante Akim North",
  census_year = 2010,

  total_not_literate_population = 10003,
  total_literate_population = 38098,

  number_not_literate_males = 3535,
  number_literate_males = 19300,

  number_not_literate_females = 6468,
  number_literate_females = 18798
)

usethis::use_data(Asante_Akim_North_2010_literacy_rates, overwrite = TRUE)
sessioninfo::session_info()
