# Variations - Random Character Sequences
# Harvard CS50R - Week 3: Applying Functions

random_character <- function() {
  # Return one random letter from lowercase letters
  return(sample(letters, 1))
}

print_sequence <- function(length) {
  # Print a random sequence of specified length with 0.25 second delay
  for (i in 1:length) {
    cat(random_character())
    Sys.sleep(0.25)
  }
  cat("\n")
}

# Run print_sequence with length 20
print_sequence(20)
