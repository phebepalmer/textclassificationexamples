#' Headlines
#'
#' This data comes from Chakraborty et. al., which combines headlines from
#' a variety of news and clickbait sources. Much of these headlines contain
#' subject matter innapropriate for classroom use. Given the volume of headlines
#' containing such language (especially for clickbait == TRUE), this filtering
#' might not catch all problematic headlines. User discretion is advised.
#'
#' @format A data frame with 22949 rows and 3 variables:
#' \describe{
#'   \item{title}{String}
#'   \item{clickbait}{Boolean}
#'   \item{ids}{Integer}
#' }
#' @source \url{https://github.com/bhargaviparanjape/clickbait}
"headlines"
