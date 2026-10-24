# 4.R - Northwest Air: Single county sorted by emissions descending
library(tidyverse)

load("3.RData")

air <- air |>
  arrange(desc(emissions))

save(air, file = "4.RData")
