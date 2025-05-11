#' @title Bosome Freho District level Literacy estimates from the 2010 census
#'
#' @description The `Bosome_Freho_2010_literacy_rates` dataset contains
#' literacy percentages for respondents aged 11 years and above. This data was
#' collected from the Bosome Freho district during the 2010 Ghana Population and
#' Housing Census.
#'
#' @format A data frame with 3 rows and 11 variables:
#' \describe{
#' \item{Region_Name}{A factor with 1 level which is Ashanti.}
#' \item{District_Name}{A factor with 1 level which is Bosome Freho. }
#' \item{Gender}{A factor with 3 levels: Total (sum for all genders), Male, and Female.}
#' \item{Census_Year}{A factor with 2 levels, indicating the census year 2010.}
#' \item{Literate_Percentage}{A numeric value representing the percentage of the literate population in the district and gender group.}
#' \item{Literate_Population}{An integer representing the number of literate individuals in the district and gender group.}
#' \item{Not_Literate_Percentage}{A numeric value representing the percentage of the not literate population in the district and gender group.}
#' \item{Not_Literate_Population}{An integer representing the number of not literate individuals in the district and gender group.}
#' \item{Population_literacy}{An integer representing the total population in the district, total of literacy values scraped}
#' \item{Population_gender}{An integer representing the total population in the district, total of gender values scraped}
#' \item{Total_Percentage}{A numeric value representing the sum of the literate and not literate percentages for the district and gender group.}
#' }
#'
#' @source
#' \itemize{
#' \item{The 2010 Population and Housing Census District Analytical Report for the Bosome Freho District published by the Ghana Statistical Service in 2014}
#' }
#' \url{https://www2.statsghana.gov.gh/docfiles/2010_District_Report/Ashanti/ATWIMA%20MPONUA.pdf}


"Bosome_Freho_2010_literacy_rates"
