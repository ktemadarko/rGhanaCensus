#' get_edu_data_geometry
#'
#'Converts the loaded .RData file \code{Ghana_2021_school_attendance_geometry} into a sf data frame using the package \code{sf}
#'
#' @param system.file ("extdata", "Ghana_2021_school_attendance_geometry", package = "rGhanaCensus")
#' @return
#' @export
#'
#' @examples
#'
#'#load required packages
#' library(sf)
#' library(tmap)
#' library(dplyr)
#' library(magrittr)
#'
#' # Assign a name to the sf data frame
#' # In this example, "Ghana_edu_sf" will be the name of the sf data frame created
#'
#' Ghana_edu_sf = get_edu_data_geom()
#'
#' #Example 1
#'
#' #Create a interactive map with the package tmap that displays the
#' #regional distribution of percentage of students 3 years or older
#' #who have dropped out of school.
#'
#'tmap_mode("view")
#'
#' Ghana_edu_sf %>%
#'                dplyr::filter(Locality=="Urban") %>%
#'                tm_shape()+
#'                tm_polygons(id="Region", col="Percent_Dropped_out_of_School")+
#'                tm_text(text="Percent_Dropped_out_of_School")+
#'                tm_facets(by="Gender")
#'
#'
#'
#'
#'
#' #Example 2
#'
#'#load required packages
#' library(sf)
#' library(tmap)
#' library(dplyr)
#' library(magrittr)
#'
#' # Assign a name to the sf data frame
#' # In this example, "Ghana_edu_sf" will be the name of the sf data frame created
#'
#' Ghana_edu_sf = get_edu_data_geom()
#'
#' #Create a interactive map with the package tmap that displays the regional
#' #distribution of population densities of students
#' #3 years or older who have dropped out of school.
#'
#'
#' tmap_mode("view")
#'
#' Ghana_edu_sf %>%
#'              dplyr::filter(Locality=="Urban")%>%
#'              tm_shape()+
#'              tm_polygons(id="Region",col="Dropped_out_of_School", palette = "RdPu",
#'              style="kmeans", convert2density = TRUE)+ tm_facets(by="Gender")
#'


get_edu_data_geom=function(){

  system.file("extdata", "Ghana_2021_school_attendance_geometry", package = "rGhanaCensus")

  sf::st_as_sf(Ghana_2021_school_attendance_geometry)


}







