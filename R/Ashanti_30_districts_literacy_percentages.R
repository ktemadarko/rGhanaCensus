#' @title District level Literacy estimates for Ashanti Region (2010 census)
#'
#' @description The `Ashanti_30_districts_literacy_percentages` dataset contains literacy percentages for respondents aged 11 years and above. This data was collected from the Ashanti Region during the 2010 Ghana Population and Housing Census. The results of this census prompted the Government of Ghana to subdivide the some districts thus the total number of districts in the Ashanti Region increased from 27 in 2010 to 30 in the year 2012. See the Source section for references.
#'         \describe{
#'                    \item{ Details} {-Age range of survey respondents in this data set 3 years and above.}
#'       }
#
#' @format A data frame with 180 rows and 10 variables:
#' \describe{
#'    \item{Region_Name}{A factor with 1 level which is Ashanti.}
#'    \item{District_Name}{A factor with 30 levels with the names of the districts in the Ashanti region.}
#'    \item{Gender}{A factor with 3 levels: Total (sum for all genders), Male, and Female.}
#'    \item{Census_Year}{A factor with 2 levels, indicating the census year 2010 or 2021.}
#'    \item{Literate_Percentage}{A numeric value representing the percentage of the literate population in the district and gender group.}
#'    \item{Literate_Population}{An integer representing the number of literate individuals in the district and gender group.}
#'    \item{Not_Literate_Percentage}{A numeric value representing the percentage of the not literate population in the district and gender group.}
#'    \item{Not_Literate_Population}{An integer representing the number of not literate individuals in the district and gender group.}
#'    \item{Population}{An integer representing the total population in the district and gender group.}
#'    \item{Total_Percentage}{A numeric value representing the sum of the literate and not literate percentages for the district and gender group.}
#' }
#'
#' @source
#' \describe{
#'         \item{Reference that number of districts in the Ashanti Region increased}
#'         \item{The 2010 Population and Housing Census Regional Analytical Report for the Ashanti Region published by the Ghana Statistical Service published in 2013}
#' }
#'         \url{https://www2.statsghana.gov.gh/docfiles/2010phc/2010_PHC_Regional_Analytical_Reports_Ashanti_Region.pdf }
#'


"Ashanti_30_districts_literacy_percentages"
