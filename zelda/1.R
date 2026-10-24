# 1.R - Zeruda no Densetsu: Tidy Zelda Dataset
library(tidyverse)

# Read raw dataset and separate release into year and system
zelda <- read_csv("zelda.csv") |>
  separate_wider_delim(release, delim = " - ", names = c("year", "system")) |>
  mutate(
    year = as.integer(year),
    role = tolower(role)
  ) |>
  pivot_wider(names_from = role, values_from = names) |>
  select(
    title,
    year,
    system,
    directors,
    producers,
    designers,
    programmers,
    writers,
    composers,
    artists
  )

save(zelda, file = "zelda.RData")
