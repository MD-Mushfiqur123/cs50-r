# Portland International Airport (PDX) Carpet Visitor Growth Model
# Harvard CS50R - Week 3: Applying Functions

calculate_growth_rate <- function(years, visitors) {
  # Calculate average yearly growth rate in millions of visitors per year
  n <- length(years)
  rate <- (visitors[n] - visitors[1]) / (years[n] - years[1])
  return(rate)
}

predict_visitors <- function(years, visitors, year) {
  # Predict visitors for a given year based on historical rate
  rate <- calculate_growth_rate(years, visitors)
  n <- length(years)
  predicted <- visitors[n] + rate * (year - years[n])
  return(round(predicted, 2))
}

visitors <- read.csv("visitors.csv")
year <- as.integer(readline("Year: "))
predicted_visitors <- predict_visitors(visitors$year, visitors$visitors, year)
cat(paste0(predicted_visitors, " million visitors\n"))
