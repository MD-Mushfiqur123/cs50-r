# Exploratory Data Analysis (EDA)
# Harvard CS50R - Week 5: Visualizing Data
# Dataset: Iris Flower Measurements (Built-in canonical R dataset)

library(tidyverse)

# Load canonical dataset
data(iris)
iris_tbl <- as_tibble(iris)

# Print exploratory statistical summaries
cat("=== Iris Dataset Exploratory Data Analysis ===\n")
cat("Dimensions: ", nrow(iris_tbl), " rows, ", ncol(iris_tbl), " columns\n")
cat("\nSummary of Sepal and Petal Dimensions:\n")
print(summary(iris_tbl))

# Create exploratory multi-faceted scatter plot with linear trendlines
p <- ggplot(iris_tbl, aes(x = Sepal.Length, y = Petal.Length, color = Species)) +
  geom_point(size = 3, alpha = 0.8) +
  geom_smooth(method = "lm", se = FALSE, linetype = "dashed") +
  labs(
    title = "Exploratory Data Analysis: Sepal vs Petal Length across Iris Species",
    subtitle = "Fisher's Modern Iris Dataset - Dimension Correlation & Distribution",
    x = "Sepal Length (cm)",
    y = "Petal Length (cm)",
    color = "Iris Species"
  ) +
  theme_minimal(base_size = 12) +
  theme(
    plot.title = element_text(face = "bold", size = 14),
    legend.position = "bottom"
  )

# Save figure to visualization.png as verified by check50
ggsave("visualization.png", plot = p, width = 8, height = 6, dpi = 300)
cat("\nEDA figure saved to visualization.png\n")
