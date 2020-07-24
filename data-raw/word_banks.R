library(dplyr) # wrangling data/ deselect index

common <- read.csv("data-raw/common_phrases.csv") %>%
  select(-V1)
exaggerated <- read.csv("data-raw/exaggerated_phrases.csv") %>%
  select(-V1)
contractions <- read.csv("data-raw/contractions.csv") %>%
  select(-V1)
 question <- read.csv("data-raw/question_words.csv") %>%
  select(-V1)

usethis::use_data(common, overwrite = TRUE)
usethis::use_data(exaggerated, overwrite = TRUE)
usethis::use_data(contractions, overwrite = TRUE)
usethis::use_data(question, overwrite = TRUE)
