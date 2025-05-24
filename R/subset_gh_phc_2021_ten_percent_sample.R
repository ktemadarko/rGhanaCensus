#' @title Ten percent sample of 2021 Ghana Census data
#'
#' @description The Ghana Statistical Service conducted the 2021 Population and
#' Housing Census (2021 PHC) on 27th June, 2021.
#'
#' Record of household members and visitors who spent the Census Night in the
#' dwelling of the household, homeless households, stable, unstable and floating
#' population.
#'
#' This is a 10% sample of the 2021 PHC representative at the district/
#' subdistrict level and also by the urban rural classification. It also
#' contains the weighting coefficient.
#'
#' Data dictionary can be found on the Ghana Statistical Service Microdata Catalog at
#' <https://microdata.statsghana.gov.gh/index.php/catalog/110/data-dictionary/F9?file_name=defactopopn_10%_20220828d>
#'
#' 2 rows and 6 columns were removed from the original dataset due to data
#' loading errors. See the subset_gh_phc_2021_ten_percent_sample.rmd file in the
#' data_raw folder for the code that generated this dataset.
#'
#' @format A parquet file with with partitions based on the subdist variable
#' which represents the subdistricts in Ghana
#'
#' @source <https://microdata.statsghana.gov.gh/index.php/catalog/110/>
#'
