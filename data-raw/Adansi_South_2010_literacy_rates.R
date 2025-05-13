## code to prepare `Adansi_South_2010_literacy_rates` dataset goes here

#' ---
#' date: "`r format(Sys.Date())`"
#' output:
#'   html_document:
#'     keep_md: TRUE
#' ---

## Using a function in this package `rGhanaCensus`

Adansi_South_2010_literacy_rates <- new_literacy_data(
  name_of_region = "Ashanti",
  name_of_district = "Adansi South",
  census_year = 2010,
  total_literate_population = 58152,
  total_not_literate_population = 19213,
  number_literate_males = 32184,
  number_not_literate_males = 6571,
  number_literate_females = 25968,
  number_not_literate_females = 12642
)

usethis::use_data(Adansi_South_2010_literacy_rates, overwrite = TRUE)

sessioninfo::session_info()
