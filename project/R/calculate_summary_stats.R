#' Calculate Summary Statistics
#'
#' Computes descriptive statistical metrics including mean, median, standard deviation,
#' and interquartile range for a numeric vector.
#'
#' @param x A numeric vector of observation values.
#' @return A named list containing mean, median, sd, and iqr.
#' @export
#' @examples
#' calculate_summary_stats(c(10, 20, 30, 40, 50))
calculate_summary_stats <- function(x) {
  if (!is.numeric(x)) {
    stop("Input must be a numeric vector.")
  }
  clean_x <- x[!is.na(x)]
  if (length(clean_x) == 0) {
    stop("Input vector contains no valid numeric values.")
  }
  
  list(
    mean = mean(clean_x),
    median = median(clean_x),
    sd = sd(clean_x),
    iqr = IQR(clean_x)
  )
}
