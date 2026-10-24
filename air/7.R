# 7.R - Northwest Air: Total emissions of each pollutant for each level 1 source
library(tidyverse)

load("air.RData")

air <- air |>
  group_by(level_1, pollutant) |>
  summarize(emissions = sum(emissions, na.rm = TRUE), .groups = "drop") |>
  arrange(desc(emissions))

save(air, file = "7.RData")
