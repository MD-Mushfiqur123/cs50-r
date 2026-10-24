# 5.R - Zeruda no Densetsu: Original releases produced by more than 1 producer
library(tidyverse)

load("3.RData")

zelda <- zelda |>
  filter(str_detect(producers, ",")) |>
  arrange(year, title, system)

save(zelda, file = "5.RData")
