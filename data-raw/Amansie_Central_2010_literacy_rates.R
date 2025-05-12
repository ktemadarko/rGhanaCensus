## code to prepare `Amansie_Central_2010_literacy_rates` dataset goes here

#' ---
#' date: "`r format(Sys.Date())`"
#' output:
#'   html_document:
#'     keep_md: TRUE
#' ---

## Using a function in this package `rGhanaCensus`
Amansie_Central_2010_literacy_rates <-new_literacy_data(
  name_of_region = "Ashanti",
  name_of_district = "Atwima Mponua",
  census_year = 2010,
  total_literate_population = 44966,
  total_not_literate_population = 15876,
  number_literate_males = 24925,
  number_not_literate_males = 5201,
  number_literate_females = 20041,
  number_not_literate_females = 10675
)

usethis::use_data(Amansie_Central_2010_literacy_rates, overwrite = TRUE)

sessioninfo::session_info()
