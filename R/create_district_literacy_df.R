#' Literacy Data Class Constructor
#'
#' Creates an S3 object of class "literacy_data" containing district literacy
#' information.
#'
#' @param name_of_district A character string specifying the name of the district.
#' @param census_year Year in which the census data was collected.
#' @param total_literate_population An integer representing the total literate
#'   population in the district.
#' @param total_not_literate_population An integer representing the total not
#'   literate population in the district.
#' @param number_literate_males An integer representing the number of literate
#'   males in the district.
#' @param number_literate_females An integer representing the number of literate
#'   females in the district.
#' @param number_not_literate_males An integer representing the number of males
#'   in the district who cannot read.
#' @param number_not_literate_females An integer representing the number of
#'   females in the district who cannot read.
#' @param name_of_region A character string specifying the region name. Defaults to "Ashanti".
#'
#' @return An S3 object of class "literacy_data".
#'
#' @examples
#' # Create literacy data for the Kumasi Metropolitan district
#' kumasi_literacy <- new_literacy_data(
#'   name_of_district = "Kumasi Metropolitan",
#'   census_year = 2010,
#'   total_literate_population = 800000,
#'   total_not_literate_population = 200000,
#'   number_literate_males = 450000,
#'   number_literate_females = 350000,
#'   number_not_literate_males = 100000,
#'   number_not_literate_females = 100000
#' )
#'
#' @export
new_literacy_data <- function(name_of_district,
                              census_year,
                              total_literate_population,
                              total_not_literate_population,
                              number_literate_males,
                              number_literate_females,
                              number_not_literate_males,
                              number_not_literate_females,
                              name_of_region = "Ashanti") {

  # Create an assertion collection
  assertions <- assertions::makeAssertCollection()

  # Input validation using assert_ functions
  assertions::assert_character(name_of_district, len = 1, add = assertions)
  assertions::assert_number(census_year, len = 1, add = assertions)
  assertions::assert_number(total_literate_population, len = 1, add = assertions)
  assertions::assert_number(total_not_literate_population, len = 1, add = assertions)
  assertions::assert_number(number_literate_males, len = 1, add = assertions)
  assertions::assert_number(number_literate_females, len = 1, add = assertions)
  assertions::assert_number(number_not_literate_males, len = 1, add = assertions)
  assertions::assert_number(number_not_literate_females, len = 1, add = assertions)
  assertions::assert_character(name_of_region, len = 1, add = assertions)

  # Report any assertions
  assertions::reportAssertions(assertions)

  df <- data.frame(
    Region_Name = c(name_of_region),
    District_Name = rep(name_of_district, times = 3),
    Census_Year = rep(census_year, times = 3),
    Population_literacy = as.numeric(NA),
    Population_gender = as.numeric(NA),
    Gender = c("Total", "Male", "Female"),
    Literate_Population = c(total_literate_population, number_literate_males,
                            number_literate_females),
    Not_Literate_Population = c(total_not_literate_population, number_not_literate_males,
                                number_not_literate_females),
    Literate_Percentage = as.numeric(NA),
    Not_Literate_Percentage = as.numeric(NA),
    Total_Percentage = as.numeric(NA)
  )

  target_index <- which(df$District_Name == name_of_district & df$Census_Year == census_year & df$Gender == "Total")

  df$Population_literacy[target_index] <- total_literate_population +
    total_not_literate_population

  df$Population_gender[target_index] <- number_literate_males +
    number_not_literate_males + number_literate_females +
    number_not_literate_females

  # Create the S3 object
  structure(
    list(data = df),
    class = "literacy_data"
  )
}
