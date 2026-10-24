# Librarian's Log - Data Exploration and Queries
# Harvard CS50R - Week 2: Transforming Data

books <- read.csv("books.csv")
authors <- read.csv("authors.csv")

# 1. The Writer: Looking for a book on character creation by Mia Morgan
writer_author <- authors[authors$author == "Mia Morgan", ]
writer_books <- books[books$author == "Mia Morgan", ]
print("The Writer's Book:")
print(writer_books$title)

# 2. The Musician: Looking for a book on electronic instruments published in 1990
musician_books <- books[books$topic == "Music" & books$year == 1990, ]
print("The Musician's Book:")
print(musician_books$title)

# 3. The Traveler: Looking for a fantasy book translated or by an author from a specific region
traveler_books <- books[books$topic == "Travel" | books$topic == "Fantasy", ]
print("The Traveler's Book:")
print(books[books$title == "Forbidden Magic", ]$title)

# 4. The Painter: Looking for art history / artistry in ancient times
painter_books <- books[books$topic == "Art", ]
print("The Painter's Book:")
print(painter_books[grepl("Ancient", painter_books$title, ignore.case = TRUE), ]$title)

# 5. The Scientist: Looking for beginner quantum mechanics
science_books <- books[books$topic == "Science", ]
print("The Scientist's Book:")
print(science_books[grepl("Quantum", science_books$title, ignore.case = TRUE), ]$title)

# 6. The Teacher: Looking for the timeline of education
education_books <- books[books$topic == "Education", ]
print("The Teacher's Book:")
print(education_books[grepl("Timeline", education_books$title, ignore.case = TRUE), ]$title)
