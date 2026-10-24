# World Happiness Report Evaluator
# Harvard CS50R - Week 3: Applying Functions

country_input <- readline("Country: ")

years <- c("2020", "2021", "2022", "2023", "2024")

for (yr in years) {
  filename <- paste0(yr, ".csv")
  data <- read.csv(filename)
  
  match <- data[tolower(data$country) == tolower(country_input), ]
  
  if (nrow(match) > 0) {
    # Sum all numeric columns excluding the country name
    numeric_values <- match[1, names(match) != "country"]
    score <- round(sum(as.numeric(numeric_values)), 2)
    cat(paste0(country_input, " (", yr, "): ", score, "\n"))
  } else {
    cat(paste0(country_input, " (", yr, "): data unavailable\n"))
  }
}
