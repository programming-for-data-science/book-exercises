# Exercise 1: analyzing avocado sales with the `tidyr` package

# Load necessary packages (`tidyr`, `dplyr`, and `ggplot2`)


# Set your working directory using the RStudio menu:
# Session > Set Working Directory > To Source File Location

# Load the `data/avocado.csv` file into a variable `avocados`
# Make sure strings are *not* read in as factors


# To tell R to treat the `Date` column as a date (not just a string)
# Redefine that column as a date using the `as.Date()` function
# (hint: use the `mutate` function)


# The file had some uninformative column names, so rename these columns:
# `X4046` to `small_haas`
# `X4225` to `large_haas`
# `X4770` to `xlarge_haas`


# The data only has sales for haas avocados. Create a new column `other_avos`
# that is the Total.Volume minus all haas avocados (small, large, xlarge)


# To perform analysis by avocado size, create a dataframe `by_size` that has
# only `Date`, `other_avos`, `small_haas`, `large_haas`, `xlarge_haas`


# In order to visualize this data, it needs to be reshaped. The four columns
# `other_avos`, `small_haas`, `large_haas`, `xlarge_haas` need to be 
# **gathered** together into a single column called `size`. The volume of sales
# (currently stored in each column) should be stored in a new column called 
# `volume`. Create a new dataframe `size_gathered` by passing the `by_size` 
# data frame to the `gather()` function. `size_gathered` will only have 3 
# columns: `Date`, `size`, and `volume`.


# Using `size_gathered`, compute the average sales volume of each size 
# (hint, first `group_by` size, then compute using `summarize`)


# This shape also facilitates the visualization of sales over time
# (how to write this code is covered in Chapter 16)
ggplot(size_gathered) +
  geom_smooth(mapping = aes(x = Date, y = volume, col = size), se = F) 


# We can also investigate sales by avocado type (conventional, organic).
# Create a new data frame `by_type` by grouping the `avocados` dataframe by
# `Date` and `type`, and calculating the sum of the `Total.Volume` for that type
# in that week (resulting in a data frame with 2 rows per week).


# To make a (visual) comparison of conventional versus organic sales, you 
# need to **spread** out the `type` column into two different columns. Create a 
# new data frame `by_type_wide` by passing the `by_type` data frame to 
# the `spread()` function!


# Now you can create a scatterplot comparing conventional to organic sales!
# (how to write this code is covered in Chapter 16)
ggplot(by_type_wide) +
  geom_point(mapping = aes(x = conventional, y = organic, color = Date)) 
