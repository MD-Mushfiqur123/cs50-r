# 5.R - Northwest Air: Largest pollutant source for each county
library(tidyverse)

load("air.RData")

air <- air |>
  group_by(county) |>
  slice_max(emissions, n = 1, with_ties = FALSE) |>
  ungroup() |>
  arrange(desc(emissions))

save(air, file = "5.RData")
