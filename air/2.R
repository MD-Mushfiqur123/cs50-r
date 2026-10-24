# 2.R - Northwest Air: Sort emissions in descending order
library(tidyverse)

load("air.RData")

air <- air |>
  arrange(desc(emissions))

save(air, file = "2.RData")
