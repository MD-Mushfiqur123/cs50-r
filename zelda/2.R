# 2.R - Zeruda no Densetsu: Releases per year
library(tidyverse)

load("zelda.RData")

zelda <- zelda |>
  group_by(year) |>
  summarize(releases = n()) |>
  arrange(year)

save(zelda, file = "2.RData")
