## code to prepare `Asokore_Mampong_Municipal_2010_literacy_rates` dataset goes here

#' ---
#' date: "`r format(Sys.Date())`"
#' output:
#'   html_document:
#'     keep_md: TRUE
#' ---
## Using a function in this package `rGhanaCensus`
Asokore_Mampong_Municipal_2010_literacy_rates <- new_literacy_data(
  name_of_region = "Ashanti",
  name_of_district = "Asokore Mampong Municipal",
  census_year = 2010,
  total_literate_population = 173151,
  total_not_literate_population = 50815,

  number_not_literate_males = 15953,
  number_literate_males = 88970,

  number_not_literate_females = 34862,
  number_literate_females = 84181
)

usethis::use_data(Asokore_Mampong_Municipal_2010_literacy_rates, overwrite = TRUE)
sessioninfo::session_info()
