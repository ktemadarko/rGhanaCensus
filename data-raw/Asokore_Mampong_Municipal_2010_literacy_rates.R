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
  total_literate_population = 56068,
  total_not_literate_population = 23306,

  number_not_literate_males = 31502,
  number_literate_males = 31502,

  number_not_literate_females = 31502,
  number_literate_females = 24566
)

usethis::use_data(Asokore_Mampong_Municipal_2010_literacy_rates, overwrite = TRUE)
sessioninfo::session_info()
