## code to prepare `Afigya_Kwabre_2010_literacy_rates` dataset goes here

#' ---
#' date: "`r format(Sys.Date())`"
#' output:
#'   html_document:
#'     keep_md: TRUE
#' ---
## Using a function in this package `rGhanaCensus`
Afigya_Kwabre_2010_literacy_rates <- new_literacy_data(
  name_of_region = "Ashanti",
  name_of_district = "Afigya Kwabre",
  census_year = 2010,
  total_literate_population = 78981,
  total_not_literate_population = 14579,

  number_not_literate_males = 4666,
  number_literate_males = 39830,

  number_not_literate_females = 9913,
  number_literate_females = 39151
)

usethis::use_data(Afigya_Kwabre_2010_literacy_rates, overwrite = TRUE)
sessioninfo::session_info()
