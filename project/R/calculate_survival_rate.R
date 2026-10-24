#' Calculate Clinical Survival Rate
#'
#' Computes the empirical survival rate given a status vector (where 1 indicates event/death
#' and 0 indicates censored/alive).
#'
#' @param status A numeric or logical vector where 0 is alive and 1 is event.
#' @return A numeric percentage (0 to 100) of surviving subjects.
#' @export
#' @examples
#' calculate_survival_rate(c(0, 0, 1, 0, 1))
calculate_survival_rate <- function(status) {
  if (is.null(status) || length(status) == 0) {
    stop("Status vector cannot be empty.")
  }
  clean_status <- status[!is.na(status)]
  if (length(clean_status) == 0) {
    stop("No non-missing status values found.")
  }
  
  deaths <- sum(clean_status == 1)
  total <- length(clean_status)
  survival_rate <- ((total - deaths) / total) * 100
  round(survival_rate, 2)
}
