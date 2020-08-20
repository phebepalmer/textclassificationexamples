#' Email Subject Lines
#'
#' This dataset includes a set of email subject lines used for classification
#' of whether the message is spam (unsolicited commercial content) or not.
#' Many subject lines include  subject matter innapropriate for classroom use. 
#' Given the volume of headlines containing such language 
#' (especially for spam == TRUE), user discretion is advised.
#'
#' @docType data
#' @format A data frame with 6,908 rows and 3 variables:
#' \describe{
#'   \item{subjectline}{String}
#'   \item{type}{Boolean}
#'   \item{ids}{Integer}
#' }
#' @source \url{http://www.rdatasciencecases.org/Spam}
"emails"
#' Email Train
#'
#' This dataset is a random sample of 80\% of the emails data.
#'
#' @docType data
#' @format A data frame with 5,526 rows and 3 variables:
#' \describe{
#'   \item{subjectline}{String}
#'   \item{type}{Boolean}
#'   \item{ids}{Integer}
#' }
#' @source \url{http://www.rdatasciencecases.org/Spam}
"emails_train"
#' Email Test
#'
#' This dataset is a random sample of 20\% of the emails data.
#'
#' @docType data
#' @format A data frame with 1,382 rows and 3 variables:
#' \describe{
#'   \item{subjectline}{String}
#'   \item{type}{Boolean}
#'   \item{ids}{Integer}
#' }
#' @source \url{http://www.rdatasciencecases.org/Spam}
"emails_test"
