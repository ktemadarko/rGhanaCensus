#' ---
#' date: "`r format(Sys.Date())`"
#' output:
#'   html_document:
#'     keep_md: TRUE
#' ---

#' **Automate creating of 25 source data files**
#'
#' * 10th May, 2025 : Before I actually scraped the data, automated the creation
#' of the source R files that live in the data-raw folder. This code will create
#' a R file with template code which will be edited later.

#' **List of districts**
#' 5 files were created manually so this script create the rest of the
#' 25 districts in Ashanti region with help from gemini. I learnt I have two do
#' a pilot test before implementing the 25 districts. I ended up having to
#' delete the outputs when I needed to tweak the code and rerun.
#'

districts <- c(
  "Adansi North", "Bekwai Municipal", "Bosome Freho", "Asante Akim South",
  "Asante Akim Central Municipal", "Ejisu Juaben Municipal", "Bosumtwe",
  "Atwima Kwanwoma", "Kumasi Metropolis", "Atwima Nwabiagya", "Ahafo Ano South",
  "Ahafo Ano North", "Offinso Municipal", "Afigya Kwabre", "Kwabre East",
  "Sekyere South", "Mampong Municipal", "Sekyere East", "Sekyere Kumewu",
  "Sekyere Central", "Ejura Sekye Dumasi", "Offinso North",
  "Asokore Mampong Municipal", "Asante Akim North", "Sekyere Afram Plains North"
)

#' Source data  consistent for all districts
region_name <- "Ashanti"
census_year <- 2010
total_literate_population <- 56068
total_not_literate_population <- 23306
number_literate_males <- 31502
number_literate_females <- 24566

## Create the data-raw directory if it doesn't exist
if (!dir.exists("data-raw")) {
  dir.create("data-raw")
}

#' Loop through the districts and create the R files
for (district in districts) {
  ## Create the file name
  file_name <- paste0(gsub(" ", "_", district), "_2010_literacy_rates.R")
  file_path <- file.path("data-raw", file_name)

  ## Construct the R code
  r_code <- paste0(
    "## code to prepare `", gsub(" ", "_", district), "_2010_literacy_rates` dataset goes here\n",
    "\n",
    "#' ---\n",
    "#' date: \"`r format(Sys.Date())`\"\n",
    "#' output:\n",
    "#'   html_document:\n",
    "#'     keep_md: TRUE\n",
    "#' ---\n",
    "## Using a function in this package `rGhanaCensus`\n",
    gsub(" ", "_", district), "_2010_literacy_rates <- create_district_literacy_df(\n",
    "  name_of_region = \"", region_name, "\",\n",
    "  name_of_district = \"", district, "\",\n",
    "  census_year = ", census_year, ",\n",
    "  total_literate_population = ", total_literate_population, ",\n",
    "  total_not_literate_population = ", total_not_literate_population, ",\n",
    "  number_literate_males = ", number_literate_males, ",\n",
    "  number_literate_females = ", number_literate_females, "\n",
    ")\n",
    "\n",
    "usethis::use_data(", gsub(" ", "_", district), "_2010_literacy_rates, overwrite = TRUE)\n",
    "devtools::session_info()"
  )

  ## Write the R code to the file
  writeLines(r_code, file_path)

  cat(paste0("Created file: ", file_path, "\n"))
}

cat("All 25 R files have been created in the 'data-raw' folder.\n")
