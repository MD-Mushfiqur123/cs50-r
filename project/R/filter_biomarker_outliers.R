#' Filter Biomarker Outliers Using IQR Rule
#'
#' Identifies and removes statistical outliers from a numeric biomarker vector based on
#' Tukey's fences (1.5 * IQR).
#'
#' @param x A numeric vector of biomarker readings.
#' @param multiplier The IQR multiplier for outlier threshold, defaulting to 1.5.
#' @return A numeric vector with outliers removed.
#' @export
#' @examples
#' filter_biomarker_outliers(c(12, 14, 15, 14, 13, 100))
filter_biomarker_outliers <- function(x, multiplier = 1.5) {
  if (!is.numeric(x)) {
    stop("Input biomarker readings must be numeric.")
  }
  clean_x <- x[!is.na(x)]
  if (length(clean_x) < 4) {
    return(clean_x)
  }
  
  q25 <- quantile(clean_x, 0.25)
  q75 <- quantile(clean_x, 0.75)
  iqr_val <- q75 - q25
  
  lower_bound <- q25 - (multiplier * iqr_val)
  upper_bound <- q75 + (multiplier * iqr_val)
  
  clean_x[clean_x >= lower_bound & clean_x <= upper_bound]
}
