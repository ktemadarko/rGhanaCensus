## code to prepare `Adansi_North_2010_literacy_rates` dataset goes here

#' ---
#' date: "`r format(Sys.Date())`"
#' output:
#'   html_document:
#'     keep_md: TRUE
#' ---
## Using a function in this package `rGhanaCensus`
Adansi_North_2010_literacy_rates <- new_literacy_data(
  name_of_region = "Ashanti",
  name_of_district = "Adansi North",
  census_year = 2010,
  total_literate_population = 57399,
  total_not_literate_population = 15713,

  number_not_literate_males = 4999,
  number_literate_males = 30669,

  number_literate_females = 26730,
  number_not_literate_females = 10714
)

usethis::use_data(Adansi_North_2010_literacy_rates, overwrite = TRUE)
sessioninfo::session_info()
