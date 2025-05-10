## code to prepare `Atwima_Mponua-Amansie_West-Amansie_Central_2010_Literacy_data` dataset goes here

#' ---
#' date: "`r format(Sys.Date())`"
#' output:
#'   html_document:
#'     keep_md: TRUE
#' ---

#' Cleaning history
#'
#' * 10th May 2025: I created the structure of the data set, it would be 180 rows
#' with nine columns
#' * 10th May 2025: I am going to manually populate the literacy data from the
#' district analytical reports created by the Ghana Statistical Service.

# load-packages----
library(DT)

#' Manually Extract the names of the districts from excel file created by Ghana
#' Statistical Service downloaded on 8th May, 2025 from
#' https://statsghana.gov.gh/gssmain/fileUpload/Demography/16%20Regions%20and%20216%20Districts.xlsx

#+ warning=FALSE
