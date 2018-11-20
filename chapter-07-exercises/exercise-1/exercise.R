# Exercise 1: creating and operating on vectors

# Create a vector `names` that contains your name and the names of 2 people 
# next to you. Print the vector.
names <- c("Joel", "Mike", "Dave")
print(names)

# Use the colon operator : to create a vector `n` of numbers from 10:49
n <- 10:49

# Use the `length()` function to get the number of elements in `n`
length(n)

# Add 1 to each element in `n` and print the result
print(n + 1)

# Create a vector `m` that contains the numbers 10 to 1 (in that order). 
# Hint: use the `seq()` function
m <- seq(10, 1)

# Subtract `m` FROM `n`. Note the recycling!
n_less_m <- n - m
print(n_less_m)

# Use the `seq()` function to produce a range of numbers from -5 to 10 in `0.1`
# increments. Store it in a variable `x_range`
x_range <- seq(-5, 10, 0.1)

# Create a vector `sin_wave` by calling the `sin()` function on each element 
# in `x_range`.
sin_wave <- sin(x_range)

# Create a vector `cos_wave` by calling the `cos()` function on each element 
# in `x_range`.
cos_wave <- cos(x_range)

# Create a vector `wave` by multiplying `sin_wave` and `cos_wave` together, then
# adding `sin_wave` to the product
wave <- sin_wave * cos_wave + sin_wave

# Use the `plot()` function to plot your `wave`!
plot(wave)