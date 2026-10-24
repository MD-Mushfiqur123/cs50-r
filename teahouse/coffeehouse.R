# Coffee House - Coffee Recommendation Program (Part 2 personal program)
# Harvard CS50R - Week 2: Transforming Data

roast <- readline("Roast: ")
milk <- readline("Milk: ")

roast <- tolower(trimws(roast))
milk <- tolower(trimws(milk))

if (roast == "light" && milk == "yes") {
  cat("You might enjoy a flat white.\n")
} else if (roast == "dark" && milk == "yes") {
  cat("You might enjoy a classic cappuccino.\n")
} else if (roast == "light" && milk == "no") {
  cat("You might enjoy a pour-over single origin.\n")
} else if (roast == "dark" && milk == "no") {
  cat("You might enjoy a double espresso.\n")
} else {
  cat("Enter 'Light' or 'Dark' for roast and 'Yes' or 'No' for milk.\n")
}
