# Tea House - Tea Recommendation Program
# Harvard CS50R - Week 2: Transforming Data

flavor <- readline("Flavor: ")
caffeine <- readline("Caffeine: ")

flavor <- tolower(trimws(flavor))
caffeine <- tolower(trimws(caffeine))

if (flavor == "light" && caffeine == "yes") {
  cat("You might enjoy a cup of green tea.\n")
} else if (flavor == "bold" && caffeine == "yes") {
  cat("You might enjoy a cup of black tea.\n")
} else if (flavor == "light" && caffeine == "no") {
  cat("You might enjoy a cup of chamomile tea.\n")
} else if (flavor == "bold" && caffeine == "no") {
  cat("You might enjoy a cup of rooibos tea.\n")
} else {
  cat("Enter 'Light' or 'Bold' for flavor and 'Yes' or 'No' for caffeine.\n")
}
