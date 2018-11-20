# Exercise 5: large data sets: Baby Name Popularity Over Time

# Read in the female baby names data file found in the `data` folder into a
# variable called `names`. Remember to NOT treat the strings as factors!
names <- read.csv("data/female_names.csv", stringsAsFactors = FALSE)

# Create a data frame `names_2013` that contains only the rows for the year 2013
names_2013 <- names[names$year == 2013, ]

# What was the most popular female name in 2013?
most_popular_name_2013 <- names_2013[names_2013$prop == max(names_2013$prop), "name"]

# Write a function `most_popular_in_year` that takes in a year as a value and
# returns the most popular name in that year
most_popular_in_year <- function(year) {
  names_year <- names[names$year == year, ]
  most_popular <- names_year[names_year$prop == max(names_year$prop), "name"]
  most_popular # return most popular
}

# What was the most popular female name in 1994?
most_popular_1994 <- most_popular_in_year(1994)

# Write a function `number_in_million` that takes in a name and a year, and
# returns statistically how many babies out of 1 million born that year have
# that name.
# Hint: get the popularity percentage, and take that percentage out of 1 million.
number_in_million <- function(name, year) {
  name_popularity <- names[names$year == year & names$name == name, "prop"]
  round(name_popularity * 1000000, 1)
}

# How many babies out of 1 million had the name 'Laura' in 1995?
number_in_million("Laura", 1995)

# How many babies out of 1 million had your name in the year you were born?


## Consider: what does this tell you about how easy it is to identify you with
## just your name and birth year?
