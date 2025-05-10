#' @title Ghana School Attendance Indicator data
#'
#' @description The \code{Ghana_2021_school_attendance} dataset contains  school attendance indicators for respondents in the 16 regions of Ghana surveyed in the 2021 Ghana Population and Housing Census.
#'         \describe{
#'                    \item{ Details} {-Age range of survey respondents in this data set 3 years and above.}
#'       }
#
#' @format A data frame with 64 rows and 10 variables:
#' \describe{
#'         \item{Region}{A factor with 16 levels with the names of the regions in Ghana}
#'         \item{Gender}{A factor with 2 levels}
#'         \item{Locality}{A factor with 2 levels describing with the respondents surveyed lived in an urban or rural area}
#'         \item{Currently_Attending_School}{numeric column with the raw count values of survey respondents aged 3 years and above currently attending school}
#'         \item{Percent_Currently_Attending_School}{A numeric column with the derived percentage of ((Currently_Attending_School)/Sum_of_Respondents_(3_years_and_above))*100 to two decimal places}
#'         \item{Never_Attended_School}{A numeric column with the raw count values of survey respondents aged 3 years and above who have never attended school}

#'         \item{Percent_Never_Attended_School}{A numeric column with the derived percentage of ((Never_Attended_School)/Sum_of_Respondents_(3_years_and_above))*100 to two decimal places}
#'         \item{Dropped_out_of_School}{A numeric column with the raw count values of survey respondents aged 3 years and above who were in school but dropped out}
#'         \item{Percent_Dropped_out_of_School}{A numeric column with the derived percentage of ((Dropped_out_of_School)/Sum_of_Respondents_(3_years_and_above))*100 to two decimal places}
#'         \item{Sum_of_Respondents_(3_years_and_above)}{A numeric column with the raw sum values in each row.That is sum of (Currently_Attending_School, Never_Attended_School, Dropped_out_of_School) in each row}
#' }
#'
#' @source
#' \describe{
#'         \item{School attendance data}
#'         \item{Scraped from Ghana Statistical Service published 2021 Ghana Population and Housing Census Results Volume 3D Literacy and Education PDF Reports}
#'
#'         \url{https://statsghana.gov.gh/gssmain/fileUpload/pressrelease/2021%20PHC%20General%20Report%20Vol%203D_Literacy%20and%20Education.pdf }
#'
#'        \item{Ghana regional administrative boundaries geometry data}
#'         \item{Downloaded from Humanitarian data exchange website on 7th January, 2022}
#'         \url{https://data.humdata.org/dataset/ghana-administrative-boundaries}
#'}
#'

"Ghana_2021_school_attendance"
