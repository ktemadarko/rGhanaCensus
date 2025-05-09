#' Calculate literacy percentages
#'
#' @param df
#'
#' @return
#' @export
#'
#' @examples
calculate_literacy_percentages <- function(df) {
  df$Literate_Percentage <- df$Literate_Population / 100

  df$Not_Literate_Percentage <- df$Not_Literate_Population / 100

  df$Population <-
    df$Literate_Population + df$Not_Literate_Population

  df$Total_Percentage <-
    df$Literate_Percentage + df$Not_Literate_Percentage
}
