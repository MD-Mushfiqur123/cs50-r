# 3.R - Zeruda no Densetsu: Original releases of each title
library(tidyverse)

load("zelda.RData")

zelda <- zelda |>
  group_by(title) |>
  filter(year == min(year)) |>
  ungroup() |>
  arrange(year, title, system)

save(zelda, file = "3.RData")
