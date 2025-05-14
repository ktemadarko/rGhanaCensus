## code to prepare `Asante_Akim_South_2010_literacy_rates` dataset goes here

#' ---
#' date: "`r format(Sys.Date())`"
#' output:
#'   html_document:
#'     keep_md: TRUE
#' ---
## Using a function in this package `rGhanaCensus`
Asante_Akim_South_2010_literacy_rates <- new_literacy_data(
  name_of_region = "Ashanti",
  name_of_district = "Asante Akim South",
  census_year = 2010,
  total_literate_population = 63652,
  total_not_literate_population = 16297,

  number_not_literate_males = 5493,
  number_literate_males = 33586,

  number_not_literate_females = 10804,
  number_literate_females = 30066
)

usethis::use_data(Asante_Akim_South_2010_literacy_rates, overwrite = TRUE)
sessioninfo::session_info()
