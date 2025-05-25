# rGhanaCensus

<!-- badges: start -->

[![CRAN status](https://www.r-pkg.org/badges/version/rGhanaCensus)](https://CRAN.R-project.org/package=rGhanaCensus) [![R-CMD-check](https://github.com/ktemadarko/rGhanaCensus/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/ktemadarko/rGhanaCensus/actions/workflows/R-CMD-check.yaml)

<!-- badges: end -->

**2021 Ghana Population and Housing Census Results as Data Frames**

This package contains the 2021 Ghana Population and Housing Census Results. Users can access results as 'tidyverse' and 'sf'-Ready Data Frames.

### Installation

The latest release of the package can be installed from Github:

```r
pak::pkg_install("ktemadarko/rGhanaCensus")
```
**Data available in the package as at 24th May, 2025.**

-   Ten percent (\~3 million rows out of the approximately 30 million rows) from the 2021 Ghana Population and Housing Census.

    -   Downloaded the source data from the [Ghana Statistical Service Microdata Catalog](https://microdata.statsghana.gov.gh/index.php/catalog/110/get-microdata "Ghana Statistical Service Microdata Catalog").

-   School attendance indicators for respondents aged 3 years or older plus Ghana regional administrative boundaries.

Variables and their corresponding derived percentage columns

```         
      -Currently_Attending_School
      
      -Never_Attended_School
      
      -Dropped_out_of_School
      
      -Sum_of_Respondents_(3_years_and_above)
```

School attendance data is scraped from [Ghana Statistical Service website](https://statsghana.gov.gh/ "Ghana Statistical Service website").

-   **Source:** The 2021 Ghana Population and Housing Census Results Volume 3D Literacy and Education PDF Reports published on 16th December, 2021.

Ghana regional administrative boundaries geometry data downloaded from [Humanitarian data exchange website](https://data.humdata.org:443/dataset/cod-ab-gha "Humanitarian data exchange website") on 7th January, 2022}

Special thanks to Shelmith Kariuki (Author of rKenyaCensus) and Kyle Walker (Author of tidycensus) for the inspiration.
