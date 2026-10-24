# 4.R - Zeruda no Densetsu: Original releases produced by Shigeru Miyamoto
library(tidyverse)

load("3.RData")

zelda <- zelda |>
  filter(str_detect(producers, "Shigeru Miyamoto")) |>
  arrange(year, title, system)

save(zelda, file = "4.RData")
