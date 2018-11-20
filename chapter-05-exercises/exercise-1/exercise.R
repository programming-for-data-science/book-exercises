# Exercise 1: practice with basic R syntax

# Create a variable `hometown` that stores the city in which you were born
hometown <- "St. Louis"

# Assign your name to the variable `my_name`
my_name <- "Mike"

# Assign your height (in inches) to a variable `my_height`
my_height <- 73.5  # inches

# Create a variable `puppies` equal to the number of puppies you'd like to have
puppies <- 8

# Create a variable `puppy_price`, which is how much you think a puppy costs
puppy_price <- 250

# Create a variable `total_cost` that has the total cost of all of your puppies
total_cost <- puppies * puppy_price

# Create a boolean variable `too_expensive`, set to TRUE if the cost is greater 
# than $1,000
too_expensive <- total_cost > 1000  # Bummer!

# Create a variable `max_puppies`, which is the number of puppies you can 
# afford for $1,000
max_puppies <- 1000%/%puppy_price  # %/% is "divide and ignore remainder"
