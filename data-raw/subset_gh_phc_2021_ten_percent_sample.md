Ten percent sample of 2021 Ghana Census data
================

### History

- **May 2025:**
  - Downloaded the source data from the Ghana Statistical Service
    Microdata Catalog.
  - url:
    <https://microdata.statsghana.gov.gh/index.php/catalog/110/get-microdata>
  - The data was in the csv file format, size about 4 GB.

#### Load packages

``` r
library(arrow)
library(dplyr)
```

Using the `arrow` r package to load the data into the r environment.
This package is helpful when working with large data sets.

``` r
phc_2021_sample <- arrow::open_dataset(
  sources = "~/path/to/data/defacto_population_20221011d.csv", 
  format = "csv"
 
)
```

#### Dropping rows and columns

Due to errors saving the complete data set as a Parquet file, six
columns were dropped.

- Dropped Columns 137, 192, 204, 216, 218, 220

- Creating a new data set `subset_gh_phc_201_ten_percent_sample` with
  3,083,572 rows and 235 columns.

``` r
subset_gh_phc_2021_ten_percent_sample <-
  phc_2021_sample[,c(1:136,138:191,193:203,205:215,217, 219,221:241)]  |>
  dplyr::collect()
```

#### Write 3 million rows csv to parquet files

Partitioning by the variable `subdist` which represents the subdistricts
of Ghana.

``` r
arrow::write_dataset(dataset = subset_gh_phc_2021_ten_percent_sample,
                     partitioning = "subdist",
 
                    path = "~/path/to/data/subset_gh_phc_2021_ten_percent_sample_parquet_file")
```

#### Session info

``` r
utils::sessionInfo()
```

    ## R version 4.5.0 (2025-04-11 ucrt)
    ## Platform: x86_64-w64-mingw32/x64
    ## Running under: Windows 11 x64 (build 22631)
    ## 
    ## Matrix products: default
    ##   LAPACK version 3.12.1
    ## 
    ## locale:
    ## [1] LC_COLLATE=English_United States.utf8 
    ## [2] LC_CTYPE=English_United States.utf8   
    ## [3] LC_MONETARY=English_United States.utf8
    ## [4] LC_NUMERIC=C                          
    ## [5] LC_TIME=English_United States.utf8    
    ## 
    ## time zone: Africa/Accra
    ## tzcode source: internal
    ## 
    ## attached base packages:
    ## [1] stats     graphics  grDevices utils     datasets  methods   base     
    ## 
    ## loaded via a namespace (and not attached):
    ##  [1] compiler_4.5.0    fastmap_1.2.0     cli_3.6.5         tools_4.5.0      
    ##  [5] htmltools_0.5.8.1 rstudioapi_0.17.1 yaml_2.3.10       rmarkdown_2.29   
    ##  [9] knitr_1.50        xfun_0.52         digest_0.6.37     rlang_1.1.6      
    ## [13] evaluate_1.0.3
