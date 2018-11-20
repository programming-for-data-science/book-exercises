# Exercise 1: ggplot2 basics

# Install and load the `ggplot2` package
# You will also want to load `dplyr`


# For this exercise you'll be working with the `diamonds` data set included in 
# the ggplot2 library
# Use `?diamonds` to get more information about this data set (including the 
# column descriptions. Also check the _column names_ and the _number of rows_ 
# in the data set


# This data set has A LOT of rows. To make things a bit more readable, 
# use dplyr's `sample_n()` function to get a random 1000 rows from the data set
# Store this sample in a variable `diamonds_sample`


# Start by making a new `ggplot` with the `diamonds_sample` as the data (no 
# geometry yet)
# What do you see? (What did you expect?)


# Draw a scatter plot (with point geometry) with for the `diamonds_sample` set, 
# with the `carat` mapped to the x-position and `price` mapped to the y-position.


# Draw the same plot as above, but color each of the points based on their 
# clarity.


# Draw the same plot as above, but for the entire `diamonds` data set. Note this
# may take a few seconds to generate.


# Draw another scatter plot for `diamonds_sample` of price (y) by carat (x),
# but with all of the dots colored "blue".
# Hint: you'll need to set the color channel, not map a value to it!


# Draw a scatter plot for `diamonds_sample` of `price` by `carat`, where each
# point has an aesthetic _shape_ based on the diamond's `cut`.


# Draw a scatter plot for `diamonds_sample` of *`cut`* by `carat`, where each
# point has an aesthetic _size_ based on the diamond's *`price`*


# Try coloring the above plot based on the diamond's price!


# Draw a line plot (with line geometry) for `diamonds_sample`. The x-position 
# should be mapped to carat, y-position to price, and color to cut.


# That's kind of messy. Try using `smooth` geometry instead.


# Draw a plot with column geometry (a bar chart), mapping the diamond's `cut` to 
# the x-axis and `price` to the y-axis. Note that by default, column geometry 
# will us the "sum" of all of the y-values, so that the chart is actually of the
# TOTAL value of all of the diamonds of that cut!


# Add an aesthetic property that will _fill_ each bar geometry based on the 
# `clarity` of the diamonds. 
# What kind of chart do you get?



# Draw a plot of the `diamonds_sample` data (price by carat), with both points 
# for each diamond AND smoothed lines for each cut (hint: in a separate color)
# Give the points an `alpha` (transparency) of 0.3 to make the plot look nicer


## Bonus
# Draw a column chart of average diamond prices by clarity, and include 
# "error bars" marking the standard error of each measurement.
#
# You can calculate standard error as the _standard deviation_ divided by the 
# square root of the number of measurements (prices)

# Start by creating a data frame `clarity_summary` that includes summarized data 
# for each clarity group. Your summary data should include the mean price and the
# standard error of the price.


# Then draw the plot. The error bars should stretch from the mean-error to the 
# mean+error.

