# art.R - ASCII Art using Data Frame
# Harvard CS50R - Week 1: Representing Data

# Create a data frame representing pixel/character art (Heart / Harvard 'H' pattern)
art <- data.frame(
  col1 = c("*", "*", "*", " ", "*", "*", "*"),
  col2 = c("*", " ", " ", " ", " ", " ", "*"),
  col3 = c("*", " ", "C", "S", "5", " ", "*"),
  col4 = c("*", " ", " ", "0", " ", " ", "*"),
  col5 = c("*", " ", " ", "R", " ", " ", "*"),
  col6 = c("*", " ", " ", " ", " ", " ", "*"),
  col7 = c("*", "*", "*", " ", "*", "*", "*"),
  stringsAsFactors = FALSE
)

# Display the data frame art
print(art)
