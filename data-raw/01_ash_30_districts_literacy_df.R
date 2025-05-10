## code to prepare `Ashanti_30_districts_literacy_percentages_df` dataset goes here

#' ---
#' date: "`r format(Sys.Date())`"
#' output:
#'   html_document:
#'     keep_md: TRUE
#' ---

#' Cleaning history
#'
#' * 9th May 2025: I created the structure of the data set, it would be 180 rows
#' with ten columns
#' * 10th May 2025: I am going to manually populate the literacy data from the
#' district analytical reports created by the Ghana Statistical Service.

# load-packages----
library(DT)

#' Manually Extract the names of the districts from excel file created by Ghana
#' Statistical Service downloaded on 8th May, 2025 from
#' https://statsghana.gov.gh/gssmain/fileUpload/Demography/16%20Regions%20and%20216%20Districts.xlsx

#+ warning=FALSE
Ashanti_30_districts_literacy_percentages <- data.frame(
  Region_Name = c("Ashanti"),
  District_Name = rep(
    c(
      "Atwima Mponua",
      "Amansie West",
      "Amansie Central",
      "Adansi South",
      "Obuasi Municipal",
      "Adansi North",
      "Bekwai Municipal",
      "Bosome Freho",
      "Asante Akim South",
      "Asante Akim Central Municipal",
      "Ejisu Juaben Municipal",
      "Bosumtwi",
      "Atwima Kwanwoma",
      "Kumasi Metropolis",
      "Atwima Nwabiagya",
      "Ahafo Ano South",
      "Ahafo Ano North",
      "Offinso Municipal",
      "Afigya Kwabre",
      "Kwabre East",
      "Sekyere South",
      "Mampong Municipal",
      "Sekyere East",
      "Sekyere Kumewu",
      "Sekyere Central",
      "Ejura Sekye Dumasi",
      "Offinso North",
      "Asokore Mampong Municipal",
      "Asante Akim North",
      "Sekyere Afram Plains North"
    ),
    each = 6
  ),
  Census_Year = rep(c(2010, 2021), each = 3, times = 30),
  Gender = rep(c("Total", "Male", "Female"), times = 60),
  Population = as.numeric(NA),
  Literate_Population = as.numeric(NA),
  Not_Literate_Population = as.numeric(NA),
  Literate_Percentage = as.numeric(NA),
  Not_Literate_Percentage = as.numeric(NA),
  Total_Percentage = as.numeric(NA)
)


#' Calculate literacy percentages

devtools::session_info()
usethis::use_data(Ashanti_30_districts_literacy_percentages, overwrite = TRUE)
