# On Time Transit Reliability Analyzer
# Harvard CS50R - Week 2: Transforming Data

bus <- read.csv("bus.csv")
rail <- read.csv("rail.csv")
transit <- rbind(bus, rail)

route_input <- readline("Route: ")

route_data <- transit[transit$route == route_input, ]

peak_data <- route_data[route_data$peak == "PEAK", ]
offpeak_data <- route_data[route_data$peak == "OFF_PEAK", ]

peak_reliability <- round(mean(peak_data$numerator / peak_data$denominator) * 100)
offpeak_reliability <- round(mean(offpeak_data$numerator / offpeak_data$denominator) * 100)

cat(paste0("On time ", peak_reliability, "% of the time during peak hours.\n"))
cat(paste0("On time ", offpeak_reliability, "% of the time during off-peak hours.\n"))
