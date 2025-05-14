## code to prepare `Asante_Akim_Central_Municipal_2010_literacy_rates` dataset goes here

#' ---
#' date: "`r format(Sys.Date())`"
#' output:
#'   html_document:
#'     keep_md: TRUE
#' ---
## Using a function in this package `rGhanaCensus`
Asante_Akim_Central_Municipal_2010_literacy_rates <- new_literacy_data(
  name_of_region = "Ashanti",
  name_of_district = "Asante Akim Central Municipal",
  census_year = 2010,

  total_not_literate_population = 7109 ,
  total_literate_population = 43377,

  number_not_literate_males = 2141,
  number_literate_males = 21176,

  number_not_literate_females = 4968,
  number_literate_females = 22201
)

usethis::use_data(Asante_Akim_Central_Municipal_2010_literacy_rates, overwrite = TRUE)
sessioninfo::session_info()
