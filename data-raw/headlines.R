headlines <- read.csv("data-raw/all_headlines.csv")
filtered_headlines <- read.csv("data-raw/filtered_headlines.csv")
sample_headlines <- read.csv("data-raw/sample_headlines.csv")

usethis::use_data(headlines, overwrite = TRUE)
usethis::use_data(filtered_headlines, overwrite = TRUE)
usethis::use_data(sample_headlines, overwrite = TRUE)
