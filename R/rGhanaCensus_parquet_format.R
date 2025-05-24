#' Get path to census data in parquet format
#'
#' rGhanaCensus stores the ten percent sample of the 2021 Ghana Population and Housing Census data in the parquet format in its
#' `inst/extdata` folder. This function make them easy to access.
#'
#' @param path Name of file. If `NULL`, the example files will be listed.
#' @export
#' @examples
#' rGhanaCensus_parquet_format()
#' rGhanaCensus_parquet_format("arrow")
rGhanaCensus_parquet_format <- function(path = NULL) {
  if (is.null(path)) {
    dir(system.file("extdata", package = "rGhanaCensus"))
  } else {
    system.file("extdata", path, package = "rGhanaCensus", mustWork = TRUE)
  }
}
