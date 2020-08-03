library(dplyr) # wrangling data
library(mosaic) # sampling dataframes
library(stringr) # str_remove nonASCII char encoding extras

headlines <- read.csv("data-raw/filtered_headlines.csv")
headlines$title <- iconv(headlines$title,
                             "latin1", "ASCII//TRANSLIT") %>%
  str_remove("\"")

set.seed(1999)

sample_headlines <- rbind(mosaic::sample(subset(
  headlines, clickbait == TRUE), 1000),
  mosaic::sample(subset(headlines,
                        clickbait == FALSE), 1000))%>%
  select(-orig.id)

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
