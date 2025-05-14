## code to prepare `Atwima_Kwanwoma_2010_literacy_rates` dataset goes here

#' ---
#' date: "`r format(Sys.Date())`"
#' output:
#'   html_document:
#'     keep_md: TRUE
#' ---
## Using a function in this package `rGhanaCensus`
Atwima_Kwanwoma_2010_literacy_rates <- new_literacy_data(
  name_of_region = "Ashanti",
  name_of_district = "Atwima Kwanwoma",
  census_year = 2010,
  total_literate_population = 53380,
  total_not_literate_population = 8998,

  number_not_literate_males = 2519,
  number_literate_males = 26896,

  number_not_literate_females = 6479,
  number_literate_females = 26484
)

usethis::use_data(Atwima_Kwanwoma_2010_literacy_rates, overwrite = TRUE)
sessioninfo::session_info()
