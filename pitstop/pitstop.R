# Formula 1 Pit Stop Analyzer
# Harvard CS50R - Week 1: Representing Data

filename <- readline("File: ")

data <- read.csv(filename)

total_stops <- nrow(data)
fastest_time <- min(data$time)
slowest_time <- max(data$time)
total_time <- round(sum(data$time), 2)

cat(paste0("Total number of pit stops: ", total_stops, "\n"))
cat(paste0("Duration of fastest pit stop: ", fastest_time, " seconds\n"))
cat(paste0("Duration of slowest pit stop: ", slowest_time, " seconds\n"))
cat(paste0("Total time spent on pit stops: ", total_time, " seconds\n"))
