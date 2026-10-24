# 3.R - Northwest Air: Filter data for one specific county
library(tidyverse)

load("air.RData")

air <- air |>
  filter(county == "OR - Multnomah")

save(air, file = "3.RData")
