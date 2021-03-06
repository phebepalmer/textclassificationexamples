library(dplyr)
library(stringr)
library(tidytext)

#' Common Phrases
#'
#' This function takes in any string and returns a boolean indicating
#' whether or not one of the phrases within the dataframe common
#' is present. This function is intended for use on any of the clickbait
#' MEA datasets.
#'
#' @param text string/ headline
#'
#' @examples
#' headlines_common <- headlines %>%
#'    mutate(has_common_phrase = has_common_phrase(text = title))
#'
#' @export

has_common_phrase <- function(text) {
  return(grepl(paste(common$phrase, collapse = "|"), text))
}

#' Exaggerated Phrases
#'
#' This function takes in any string and returns a boolean indicating
#' whether or not one of the phrases within the dataframe exaggerated is
#' present. This function is intended for use on any of the clickbait
#' MEA datasets.
#'
#' @param text string/ headline
#'
#' @examples
#' headlines_exaggerated <- headlines %>%
#'    mutate(has_exaggerated_phrase =
#'           has_exaggerated_phrase(text = title))
#'
#' @export

has_exaggerated_phrase <- function(text) {
  return(grepl(paste(exaggerated$phrase, collapse = "|"), text))
}

#' Question Words
#'
#' This function takes in any string and returns a boolean indicating
#' whether or not one of the phrases within the dataframe question is
#' present. This function is intended for use on any of the clickbait
#' MEA datasets.
#'
#' @param text string/ headline
#'
#' @examples
#' headlines_question <- headlines %>%
#'    mutate(has_question_word = has_question_word(text = title))
#'
#' @export

has_question_word <- function(text) {
  return(grepl(paste(question$word, collapse = "|"), text))
}

#' Contraction Words
#'
#' This function takes in any string and returns the number of contractions
#' present.
#' This function is intended for use on any of the clickbait MEA datasets.
#'
#' @param text string/ headline
#'
#' @examples
#' headlines_contractions <- headlines %>%
#'    mutate(num_contractions = num_contractions(text = title))
#'
#' @export

num_contractions <- function(text){
  return(str_count(text, paste(contractions$word, collapse = "|")))
}

#' Number of Stop Words
#'
#' This function takes in any string and returns an integer equal to
#' the number of stop words present.
#' This function is intended for use on any of the clickbait MEA datasets.
#'
#' @param text string/ headline
#'
#' @examples
#' headlines_stop_words <- headlines %>%
#'    mutate(num_stop_words = num_stop_words(text = title))
#'
#' @export

num_stop_words <- function(text){
  data(stop_words)
  return(str_count(text, paste(stop_words$word, collapse = "|")))
}

#' Starts with Number
#'
#' This function takes in any string and returns a boolean indicating
#' whether or not it begins with a number. This function is intended for
#' use on any of the clickbait MEA datasets.
#'
#' @param text string/ headline
#'
#' @examples
#' articles_starts_num <- headlines %>%
#'    mutate(starts_with_num = starts_with_num(text = title))
#'
#' @export

starts_with_num <- function(text){
  return(grepl("^[[:digit:]]+", text))
}
#' Positivity (AFINN) Score
#'
#' This function takes in any dataframe with headline and ids variables and
#' returns a new dataframe containing the variable positivity,
#' which is an integer that represents the total AFINN score associated with
#' each headline. Scores of 0 represent neutral headlines, or headlines
#' not containing any words within the AFINN wordbank.
#'
#'
#' @param ds dataset
#'
#' @examples
#' articles_positivity <- positivity(articles)
#'
#' @export
#'

positivity <- function(text){
}

#' Number of Words
#'
#' This function takes in any string and returns the number of words it has.
#' This function is intended for use on any of the clickbait MEA datasets.
#'
#' @param text string/ headline
#'
#' @examples
#' headlines_words <- headlines %>% mutate(num_words = num_words(title))
#'
#' @export

num_words <- function(text){
  headline <- str_split(text, pattern = " ")
  return(length(headline[[1]]))
}

#' Number of Pronouns
#'
#' This function takes in any string and returns the number of pronouns
#' present.
#' This function is intended for use on any of the clickbait MEA datasets.
#' Pronouns detected include: I, me, you, he, him, she, her, it, we,
#' us, they, them, one, your, and my.
#'
#' @param text string/ headline
#'
#' @examples
#' headlines_pronouns <- headlines %>%
#'    mutate(num_pronouns = num_pronouns(text = title))
#'
#' @export
#'

num_pronouns <- function(text) {
  pronouns_list <- c(
    "I", "me", "you", "he", "him", "she", "her",
    "it", "we", "us", "they", "them", "one", "your", "my"
  )

  return(str_count(text, paste0(pronouns_list, collapse = "|")))
}
