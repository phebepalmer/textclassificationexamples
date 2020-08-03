library(dplyr) # wrangling data
library(mosaic) # sampling datasets

spam <- read.csv("data-raw/spam.csv") %>%
  mutate(type = "spam")

hard_ham <- read.csv("data-raw/hard_ham.csv") %>%
  mutate(
    type = "hard ham",
    ids = max(spam$ids) + ids
  )

easy_ham <- read.csv("data-raw/easy_ham.csv") %>%
  mutate(
    type = "easy ham",
    ids = max(hard_ham$ids) + ids
  )

emails <- rbind(
  rbind(spam, hard_ham),
  easy_ham
)

set.seed(1999)
emails_train <- rbind(
  rbind(
    mosaic::sample(
      subset(
        emails,
        type == "spam"
      ),
      724
    ),
    mosaic::sample(
      subset(
        emails,
        type == "hard ham"
      ),
      449
    )
  ),
  mosaic::sample(
    subset(
      emails,
      type == "easy ham"
    ),
    4353
  )
) %>%
  select(-orig.id)

emails_test <- emails %>%
  anti_join(
    emails_train,
    "ids"
  )

usethis::use_data(emails, overwrite = TRUE)
usethis::use_data(emails_train, overwrite = TRUE)
usethis::use_data(emails_test, overwrite = TRUE)
