## code to prepare `ash_30_districts_literacy_df` dataset goes here

#' ---
#' date: "`r format(Sys.Date())`"
#' output:
#'   html_document:
#'     keep_md: TRUE
#' ---

#' Cleaning history
#'
#' * 9th May 2025: I created the structure of the data set, it would be 180 rows
#' with nine columns
#' * 10th May 2025: I am going to manually populate the literacy data from the
#' district analytical reports created by the Ghana Statistical Service.

# load-packages----
library(DT)

#' Manually Extract the names of the districts from excel file created by Ghana
#' Statistical Service downloaded on 8th May, 2025 from
#' https://statsghana.gov.gh/gssmain/fileUpload/Demography/16%20Regions%20and%20216%20Districts.xlsx

#+ warning=FALSE
ash_30_districts_literacy_df <- data.frame(
  District_Name = rep(
    c(
      "Atwima Mponua",
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
    ),
    each = 6
  ),
  Census_Year = rep(c(2010, 2021), each = 3, times = 30),
  Gender = rep(c("Total", "Male", "Female"), times = 60),
  Population = c(""),
  Literate_Population = c(""),
  Not_Literate_Population = c(""),
  Literate_Percentage = c(""),
  Not_Literate_Percentage = c(""),
  Total_Percentage = c("")
)


#' Calculate literacy percentages
pop_raw <- pop_xls %>%
  select(country = Area, year = Year, pop = Population)
pop_raw %>% str()

#' Focus on the years where most of the data is.
summary(pop_raw$year)
#' AHA! In 2010, this also included 2448 NA's. 20455 + 2448 = 22903. Mystery of
#' the rows solved.

year_freq <- pop_raw %>%
  count(year)

(p <- ggplot(year_freq, aes(x = year, y = n)) +
    geom_bar(stat = "identity"))
p + xlim(c(1800, 2010))
p + xlim(c(1945, 1955)) # huge increase at 1950
p + xlim(c(2000, 2015)) # huge drop at 2009 (data contains some extrapolation)

#' Keep data from 1950 to 2008
year_min <- 1950
year_max <- 2008
pop_raw <- pop_raw %>%
  filter(year %>% between(year_min, year_max))
str(pop_raw)

#' I am the voice from the future: look at India!
pop_raw %>%
  filter(country == "India")
#' These doubles create problems later. GET RID OF THEM NOW.

#' Force the population to be integer.
pop_raw <- pop_raw %>%
  mutate(pop = pop %>% as.integer())

#' Save for now
write_tsv(pop_raw, "01_pop.tsv")

devtools::session_info()
usethis::use_data(ash_30_districts_literacy_df, overwrite = TRUE)
