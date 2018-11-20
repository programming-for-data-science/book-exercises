# Exercise 2: using built-in string functions

# Create a variable `lyric` that contains the text "I like to eat apples and
# bananas"
lyric <- "I like to eat apples and bananas"

# Use the `substr()` function to extract the 1st through 13th letters from the
# `lyric`, and store the result in a variable called `intro`
# Use `?substr` to see more about this function
intro <- substr(lyric, 1, 13)

# Use the `substr()` function to extract the 15th through the last letter of the
# `lyric`, and store the result in a variable called `fruits`
# Hint: use `nchar()` to determine how many total letters there are!
fruits <- substr(lyric, 15, nchar(lyric))

# Use the `gsub()` function to substitute all the "a"s in `fruits` with "ee".
# Store the result in a variable called `fruits_e`
# Hint: see http://www.endmemo.com/program/R/sub.php for a simpmle example (or
# use `?gsub`)
fruits_e <- gsub("a", "ee", fruits)

# Use the `gsub()` function to substitute all the "a"s in `fruits` with "o".
# Store the result in a variable called `fruits_o`
fruits_o <- gsub("a", "o", fruits)

# Create a new variable `lyric_e` that is the `intro` combined with the new
# `fruits_e` ending. Print out this variable
lyric_e <- paste(intro, fruits_e)
print(lyric_e)

# Without making a new variable, print out the `intro` combined with the new
# `fruits_o` ending
print(paste(intro, fruits_o))
