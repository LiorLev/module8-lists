#module 8
# Exercise 2: `*apply()`

# Create a *list* of 10 random numbers. Use the `runif` function to make a vector of random numbers,
# then use `as.list()` to convert that to a list.

random.list <- as.list(runif(10, min=0, max=1))


# Use `lapply()` to apply the `round()` function to each number, rounding it to the nearest .1

rounded <- lapply(random.list, round, 1)
print(rounded)


## Bonus

# Create a variable 'sentence' that has contains a sentence of text (go for something longish).
# Make it lowercase

sentence <- "hello how are you today? the weather is pretty cold and cloudy"

# Use the `strsplit()` function to split the sentence into vector of letters.
# Hint: split on `""` to split on everything
# Note: this will return a _list_ with 1 element (which is the vector of letters)

list <- strsplit(sentence, split="")

# Extract the vector of letters from the resulting list

vector <- list[[1]]

# Use the `unique()` function to get a vector unique letters

vector.unique <- unique(vector)

# Define a function CountOccurances that takes in two parameters: a letter and a vector letters.
# The function should return how many times that letter occurs in the vector
# Hint: use a filter!

CountOccurances <- function(letter, vector){
  
  count <- length(vector[vector == letter])
  return(count)
  
}


# Call your CountOccurances() function to see how many times the letter 'e' is in your sentence.

CountOccurances("e", vector)


# Use `sapply()` to apply your CountOccurances() function to each unique letter in the vector to determine its frequency!
# Convert the result into a list (using `as.list`).

x <- as.list(sapply(vector, CountOccurances, vector.unique))
# Print the resulting list of frequencies
print(x)
