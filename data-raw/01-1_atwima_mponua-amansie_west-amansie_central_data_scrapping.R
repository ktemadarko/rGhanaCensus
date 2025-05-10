## code to prepare `Atwima_Mponua-Amansie_West-Amansie_Central_2010_Literacy_data` dataset goes here

#' ---
#' date: "`r format(Sys.Date())`"
#' output:
#'   html_document:
#'     keep_md: TRUE
#' ---

#' **Cleaning history**
#'
#' This script is to scrape literacy data for the following 3 districts
#' * Atwima Mponua
#' * Amansie West
#' * Amansie Central
#'
#' **Data Acquisition and Extraction**
#' * 10th May 2025
#' The district-level analytical reports, available in PDF format for each of the three districts, were the source of literacy data.
#' The literacy section of these reports was extracted and saved as individual PDF files.
#' Subsequently, Gemini was employed to programmatically extract the following literacy metrics for each district:
#'   * Total literacy percentage
#'   * Literacy percentage disaggregated by gender

# load-packages----
library(DT)

#' Manually Extract the names of the districts from excel file created by Ghana
#' Statistical Service downloaded on 8th May, 2025 from
#' https://statsghana.gov.gh/gssmain/fileUpload/Demography/16%20Regions%20and%20216%20Districts.xlsx

#+ warning=FALSE
create_district_literacy_df(
  name_of_region = "Ashanti",
  name_of_district = "Atwima Mponua",
  census_year = 2010,
  total_literate_population = 56068,
  total_not_literate_population = 23306,
  number_literate_males = 31502,
  number_literate_females = 24566
)
