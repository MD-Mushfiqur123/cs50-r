# believe.R - Palindrome and String Symmetry Classifier
# Harvard CS50R - Week 6: Testing Programs ("Can You Believe in Machines?")

is_palindrome <- function(s) {
  # Handle NA or non-character inputs
  if (is.null(s) || is.na(s) || !is.character(s)) {
    return(FALSE)
  }
  
  # Remove all non-alphanumeric characters and convert to lowercase
  cleaned <- tolower(gsub("[^a-zA-Z0-9]", "", s))
  
  # Empty or single-character strings are palindromes
  if (nchar(cleaned) <= 1) {
    return(TRUE)
  }
  
  # Reverse string and compare
  chars <- strsplit(cleaned, "")[[1]]
  rev_chars <- rev(chars)
  reversed <- paste(rev_chars, collapse = "")
  
  return(cleaned == reversed)
}
