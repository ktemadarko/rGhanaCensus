#' Calculate Literacy Percentages
#'
#' This function takes a data frame with columns for Literate Population and
#' Not Literate Population and calculates the Literate Percentage, Not Literate
#' Percentage, and Total Percentage. It also recalculates the total Population
#' based on the literate and not literate populations.
#'
#' @param df A data frame with columns named 'Literate_Population' and
#'   'Not_Literate_Population'. These columns are expected to be numeric.
#'
#' @return The input data frame `df` with three new columns added:
#'   'Literate_Percentage', 'Not_Literate_Percentage', and 'Total_Percentage'.
#'
#' @examples
#' # Create a sample data frame
#' literacy_data <- data.frame(
#'   Literate_Population = c(150, 200, 180),
#'   Not_Literate_Population = c(50, 100, 20)
#' )
#' literacy_data$Population = literacy_data$Literate_Population +
#' literacy_data$Not_Literate_Population
#' # Calculate literacy percentages
#' result_df <- calculate_literacy_percentages(literacy_data)
#'
#' @export
calculate_literacy_percentages <- function(df) {
  df$Literate_Percentage <- (df$Literate_Population / df$Population_literacy) * 100

  df$Not_Literate_Percentage <- (df$Not_Literate_Population / df$Population_literacy) * 100

  df$Total_Percentage <-
    df$Literate_Percentage + df$Not_Literate_Percentage

  return(df)
}
