library(dplyr) # wrangling data
library(mosaic) # sampling dataframes

headlines <- read.csv("data-raw/filtered_headlines.csv")
sample_headlines <- read.csv("data-raw/sample_headlines.csv")

set.seed(1999)
headlines_train <- mosaic::sample(
  headlines,
  18360
) %>% # approximately 80% of headlines
  select(-orig.id)
headlines_test <- headlines %>%
  anti_join(
    headlines_train,
    "ids"
  )

usethis::use_data(headlines, overwrite = TRUE)
usethis::use_data(sample_headlines, overwrite = TRUE)
usethis::use_data(headlines_train, overwrite = TRUE)
usethis::use_data(headlines_test, overwrite = TRUE)
