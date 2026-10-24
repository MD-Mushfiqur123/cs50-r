# Big 5 Personality Test Analysis
# Harvard CS50R - Week 1: Representing Data

# Read tab-separated participant responses
data <- read.table("tests.tsv", header = TRUE, sep = "\t")

# Map gender codes (0 = Unanswered, 1 = Male, 2 = Female, 3 = Other)
gender_labels <- c("0" = "Unanswered", "1" = "Male", "2" = "Female", "3" = "Other")
data$gender <- factor(data$gender, levels = c(0, 1, 2, 3), labels = c("Unanswered", "Male", "Female", "Other"))

# Calculate normalized trait scores (sum / 15) rounded to 2 decimal places
data$extroversion <- round((data$E1 + data$E2 + data$E3) / 15, 2)
data$neuroticism <- round((data$N1 + data$N2 + data$N3) / 15, 2)
data$agreeableness <- round((data$A1 + data$A2 + data$A3) / 15, 2)
data$conscientiousness <- round((data$C1 + data$C2 + data$C3) / 15, 2)
data$openness <- round((data$O1 + data$O2 + data$O3) / 15, 2)

# Save analysis to analysis.csv
write.csv(data, "analysis.csv", row.names = FALSE)
