# Parked Out By The Lake - Lyrics Frequency Visualizer
# Harvard CS50R - Week 5: Visualizing Data

library(tidyverse)

# Read lyrics file (defaulting to Dean Summerwind's song)
lyrics_text <- readLines("lyrics/summerwind.txt")

# Combine lines, convert to lowercase, and split into individual words
all_text <- paste(lyrics_text, collapse = " ")
words <- tolower(str_extract_all(all_text, "[a-z']+")[[1]])

# Create a tibble of word counts
word_counts <- tibble(word = words) |>
  filter(!word %in% c("the", "a", "an", "and", "in", "on", "at", "to", "of", "is", "it", "my", "i", "me", "that", "this")) |>
  count(word, sort = TRUE) |>
  slice_head(n = 15)

# Create a horizontal bar chart visualizing the top 15 words
p <- ggplot(word_counts, aes(x = reorder(word, n), y = n)) +
  geom_col(fill = "steelblue") +
  coord_flip() +
  labs(
    title = "Top Words in 'Parked Out By The Lake'",
    subtitle = "Word Frequency Analysis (Excluding Common Stopwords)",
    x = "Word",
    y = "Count"
  ) +
  theme_minimal() +
  theme(
    plot.title = element_text(face = "bold", size = 14),
    axis.text = element_text(size = 10)
  )

# Save plot to lyrics.png as required by check50
ggsave("lyrics.png", plot = p, width = 8, height = 6, dpi = 300)
