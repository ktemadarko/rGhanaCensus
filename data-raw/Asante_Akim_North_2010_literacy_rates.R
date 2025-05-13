## code to prepare `Asante_Akim_North_2010_literacy_rates` dataset goes here

#' ---
#' date: "`r format(Sys.Date())`"
#' output:
#'   html_document:
#'     keep_md: TRUE
#' ---
## Using a function in this package `rGhanaCensus`
Asante_Akim_North_2010_literacy_rates <- create_district_literacy_df(
  name_of_region = "Ashanti",
  name_of_district = "Asante Akim North",
  census_year = 2010,

  total_not_literate_population = ,
  total_literate_population = 58949,

  number_not_literate_males = 31502,
  number_literate_males = 31502,

  number_not_literate_females = 31502,
  number_literate_females = 24566
)

usethis::use_data(Asante_Akim_North_2010_literacy_rates, overwrite = TRUE)
sessioninfo::session_info()
