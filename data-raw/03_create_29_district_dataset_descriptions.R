# List of the 29 districts
districts <- c(
  "Amansie West",
  "Amansie Central",
  "Adansi South",
  "Obuasi Municipal",
  "Adansi North",
  "Bekwai Municipal",
  "Bosome Freho",
  "Asante Akim South",
  "Asante Akim Central Municipal",
  "Ejisu Juaben Municipal",
  "Bosumtwi",
  "Atwima Kwanwoma",
  "Kumasi Metropolis",
  "Atwima Nwabiagya",
  "Ahafo Ano South",
  "Ahafo Ano North",
  "Offinso Municipal",
  "Afigya Kwabre",
  "Kwabre East",
  "Sekyere South",
  "Mampong Municipal",
  "Sekyere East",
  "Sekyere Kumewu",
  "Sekyere Central",
  "Ejura Sekye Dumasi",
  "Offinso North",
  "Asokore Mampong Municipal",
  "Asante Akim North",
  "Sekyere Afram Plains North"
)

# Loop through each district
for (district in districts) {
  # Construct the file name
  file_name <- paste0("data_", gsub(" ", "_", district), "_2010_literacy_rates.R")
  file_path <- file.path("R", file_name)

  # Construct the documentation content, replacing "name_of_district_here"
  documentation <- paste0(
    "#' @title ", district, " District level Literacy estimates from the 2010 census\n",
    "#'\n",
    "#' @description The `", gsub(" ", "_", district), "_2010_literacy_rates` dataset contains\n",
    "#' literacy percentages for respondents aged 11 years and above. This data was\n",
    "#' collected from the ", district, " district during the 2010 Ghana Population and\n",
    "#' Housing Census.\n",
    "#'\n",
    "#' @format A data frame with 3 rows and 11 variables:\n",
    "#' \\describe{\n",
    "#' \\item{Region_Name}{A factor with 1 level which is Ashanti.}\n",
    "#' \\item{District_Name}{A factor with 1 level which is ", district, ". }\n",
    "#' \\item{Gender}{A factor with 3 levels: Total (sum for all genders), Male, and Female.}\n",
    "#' \\item{Census_Year}{A factor with 2 levels, indicating the census year 2010.}\n",
    "#' \\item{Literate_Percentage}{A numeric value representing the percentage of the literate population in the district and gender group.}\n",
    "#' \\item{Literate_Population}{An integer representing the number of literate individuals in the district and gender group.}\n",
    "#' \\item{Not_Literate_Percentage}{A numeric value representing the percentage of the not literate population in the district and gender group.}\n",
    "#' \\item{Not_Literate_Population}{An integer representing the number of not literate individuals in the district and gender group.}\n",
    "#' \\item{Population_literacy}{An integer representing the total population in the district, total of literacy values scraped}\n",
    "#' \\item{Population_gender}{An integer representing the total population in the district, total of gender values scraped}\n",
    "#' \\item{Total_Percentage}{A numeric value representing the sum of the literate and not literate percentages for the district and gender group.}\n",
    "#' }\n",
    "#'\n",
    "#' @source\n",
    "#' \\itemize{\n",
    "#' \\item{The 2010 Population and Housing Census District Analytical Report for the ", district, " District published by the Ghana Statistical Service in 2014}\n",
    "#' }\n",
    "#' \\url{https://www2.statsghana.gov.gh/docfiles/2010_District_Report/Ashanti/ATWIMA%20MPONUA.pdf}\n",
    "\n\n",
    "\"", gsub(" ", "_", district), "_2010_literacy_rates\""
  )

  # Use usethis::use_r to create the file and write the content
  usethis::use_r(name = file_name)
  writeLines(documentation, con = file_path)

  cat(paste0("Created file: ", file_path, "\n"))
}

cat("Successfully created R script files for all 29 districts in the 'R' folder.\n")
