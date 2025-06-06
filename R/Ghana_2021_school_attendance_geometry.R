#' @title Ghana School Attendance Indicator data plus geometry
#'
#' @description The \code{Ghana_2021_school_attendance_geometry} dataset contains
#'  attendance indicators for respondents in the 16 regions of Ghana surveyed in
#'  the 2021 Ghana Population and Housing Census plus Ghana regional administrative
#'  boundaries.
#'  The age range of survey respondents in this data set 3 years and above.
#'
#'
#' @format A data frame with 64 rows and 10 variables:
#' \itemize{
#'         \item{Region}
#'         \itemize{
#'                   \item{A factor with 16 levels with the names of the regions in Ghana}
#'         }
#'         \item{Gender}
#'         \itemize{
#'                   \item{A factor with 2 levels}
#'              }
#'         \item{Locality}
#'         \itemize{
#'                \item{A factor with 2 levels describing with the respondents surveyed lived in an urban or rural area}
#'                }
#'         \item{Currently_Attending_School}
#'         \itemize{
#'                  \item{ numeric column with the raw count values of survey respondents aged 3 years and above currently attending school}
#'              }
#'         \item{Percent_Currently_Attending_School}
#'         \itemize{
#'                  \item{A numeric column with the derived percentage of}
#'                  \item{((Currently_Attending_School)/Sum_of_Respondents_(3_years_and_above))*100 to two decimal places}
#'                  }
#'         \item{Never_Attended_School}
#'         \itemize{
#'              \item{-A numeric column with the raw count values of survey respondents aged 3 years and above who have never attended school}
#'               }
#'         \item{Percent_Never_Attended_School}
#'         \itemize{
#'                  \item{A numeric column with the derived percentage of }
#'                  \item{((Never_Attended_School)/Sum_of_Respondents_(3_years_and_above))*100 to two decimal places}
#'                  }
#'         \item{Dropped_out_of_School}
#'         \itemize{
#'                    \item{A numeric column with the raw count values of survey respondents aged 3 years and above who were in school but dropped out}
#'                 }
#'         \item{Percent_Dropped_out_of_School}
#'         \itemize{
#'                  \item{A numeric column with the derived percentage of }
#'                  \item{((Dropped_out_of_School)/Sum_of_Respondents_(3_years_and_above))*100 to two decimal places}
#'                   }
#'         \item{Sum_of_Respondents_(3_years_and_above)}
#'         \itemize{
#'                  \item{A numeric column with the raw sum values in each row.}
#'                  \item{That is sum of (Currently_Attending_School, Never_Attended_School, Dropped_out_of_School) in each row}
#'                 }
#'  }
#'
#' @source
#' \itemize{
#'         \item{School attendance data}
#'         \item{Scraped from Ghana Statistical Service published 2021 Ghana Population and Housing Census Results Volume 3D Literacy and Education PDF Reports}
#'}
#'         \url{https://statsghana.gov.gh/gssmain/fileUpload/pressrelease/2021%20PHC%20General%20Report%20Vol%203D_Literacy%20and%20Education.pdf }
#'
#'\itemize{
#'        \item{Ghana regional administrative boundaries geometry data}
#'         \item{Downloaded from Humanitarian data exchange website on 7th January, 2022}
#'         }
#'         \url{https://data.humdata.org:443/dataset/cod-ab-gha}
#'
#'
#'@examples
#'
#'
#'#Example
#'
#' #Create a interactive map with the package tmap that displays the
#' #regional distribution of percentage of students 3 years or older who have dropped out of school.
#'
#'#Load required packages
#' library(sf)
#' library(tmap)
#' library(dplyr)
#' library(magrittr)
#'
#'#Load geometry data
#'data("Ghana_2021_school_attendance_geometry", package = "rGhanaCensus")
#'
#'
#'#Convert to sf data frame and assign a name
#'#In this example, "Ghana_edu_sf" will be the name of the sf data frame created.
#'
#'Ghana_edu_sf<- sf::st_as_sf(Ghana_2021_school_attendance_geometry)
#'
#'\dontrun{
#'#Use tmap to create interactive map
#'tmap_mode("plot")
#'
#' Ghana_edu_sf %>%
#'                dplyr::filter(Locality=="Urban") %>%
#'                tm_shape()+
#'                tm_polygons(id="Region", col="Percent_Dropped_out_of_School")+
#'                tm_text(text="Percent_Dropped_out_of_School")+
#'                tm_facets(by="Gender")
#'}
#'

"Ghana_2021_school_attendance_geometry"
