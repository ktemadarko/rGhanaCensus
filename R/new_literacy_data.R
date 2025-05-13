#' Literacy Data Class Constructor
#'
#' Creates an S3 object of class "literacy_dataframe" containing district literacy
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
#' @param name_of_region A character string specifying the region name.
#' Defaults to "Ashanti".
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
new_literacy_data <- function(name_of_region = "Ashanti",
                              name_of_district,
                              census_year = 2010,
                              total_literate_population,
                              total_not_literate_population,
                              number_literate_males,
                              number_literate_females,
                              number_not_literate_males,
                              number_not_literate_females) {

  # Create an assertion collection
  assertions <- checkmate::makeAssertCollection()

  # Input validation using assert_ functions
  checkmate::assert_character(name_of_district,  add = assertions)
  checkmate::assert_number(census_year,  add = assertions)
  checkmate::assert_number(total_literate_population,  add = assertions)
  checkmate::assert_number(total_not_literate_population,  add = assertions)
  checkmate::assert_number(number_literate_males,  add = assertions)
  checkmate::assert_number(number_literate_females,  add = assertions)
  checkmate::assert_number(number_not_literate_males,  add = assertions)
  checkmate::assert_number(number_not_literate_females,  add = assertions)
  checkmate::assert_character(name_of_region,  add = assertions)

  # Report any assertions
  checkmate::reportAssertions(assertions)

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


  df$Population_literacy <- total_literate_population +
    total_not_literate_population

  df$Population_gender <- number_literate_males +
    number_not_literate_males + number_literate_females +
    number_not_literate_females

  # Add assertion to check for equality
  checkmate::assert_true(df$Population_literacy == df$Population_gender,
    add = assertions
  )

  # Create the S3 object
  structure(
    list(data = df),
    class = "literacy_dataframe"
  )
}

#' Print method for literacy_data objects
#'
#' Custom print method for objects of class "literacy_data".  Provides a
#' more readable output.
#'
#' @param x An object of class "literacy_data".
#' @param ...  Further arguments passed to or from other methods.
#'
#' @return The input object `x` (invisibly).
#'
#' @export
print.literacy_data <- function(x, ...) {
  cat("Literacy Data Object\n")
  cat("---------------------\n")
  print(x$data, ...) # print the stored data frame
  invisible(x)
}
