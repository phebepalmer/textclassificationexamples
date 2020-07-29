library(dplyr) # wrangling data

spam <- read.csv("data-raw/spam.csv") %>%
  mutate(type = "spam")

hard_ham <- read.csv("data-raw/hard_ham.csv") %>%
  mutate(type = "hard ham",
         ids = max(spam$ids) + ids)

easy_ham <- read.csv("data-raw/easy_ham.csv") %>%
  mutate(type = "easy ham",
         ids = max(hard_ham$ids) + ids)

emails <- rbind(
  rbind(spam, hard_ham),
  easy_ham)

usethis::use_data(emails, overwrite = TRUE)
