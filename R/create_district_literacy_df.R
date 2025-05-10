#' Create a data frame for district literacy information.
#'
#' This function creates a data frame containing literacy statistics for a
#' specified district in the Ashanti region for the 2010 census year.
#' It includes total, male, and female literate populations.
#'
#' @param name_of_district A character string specifying the name of the district.
#' @param total_literate_population An integer representing the total literate
#'   population in the district.
#' @param total_not_literate_population An integer representing the total not
#'   literate population in the district.
#' @param number_literate_males An integer representing the number of literate
#'   males in the district.
#' @param number_literate_females An integer representing the number of literate
#'   females in the district.
#'
#' @return A data frame with 3 rows and 10 columns
#'
#' @examples
#' # Create literacy data for the Kumasi Metropolitan district
#' kumasi_literacy <- create_district_literacy_df(
#'   name_of_district = "Kumasi Metropolitan",
#'   total_literate_population = 800000,
#'   total_not_literate_population = 200000,
#'   number_literate_males = 450000,
#'   number_literate_females = 350000
#' )
#'
#' @export
create_district_literacy_df <-function(name_of_district, total_literate_population, total_not_literate_population, number_literate_males, number_literate_females){
  df <-data.frame(
    Region_Name = c("Ashanti"),
    District_Name = rep(name_of_district, times =3),
    Census_Year = rep(2010, times = 3),
    Population = as.numeric(NA),
    Gender = c("Total", "Male", "Female"),
    Literate_Population = c( total_literate_population,number_literate_males, number_literate_females),
    Not_Literate_Population = as.numeric(NA),
    Literate_Percentage = as.numeric(NA),
    Not_Literate_Percentage = as.numeric(NA),
    Total_Percentage = c("")
  )

  df$Population[df$District_Name == name_of_district & df$Census_Year == 2010 & df$Gender=="Total"]= total_literate_population + total_not_literate_population
  df$Not_Literate_Population[df$District_Name == name_of_district & df$Census_Year == 2010 & df$Gender=="Total"]=  total_not_literate_population
  return(df)
}
