# Exercise 2: advanced ggplot2 practice

# Install and load the `ggplot2` package
#install.packages('ggplot2')
library("ggplot2")

# For this exercise you will again be working with the `diamonds` data set.
# Use `?diamonds` to review details about this data set
?diamonds

## Position Adjustments

# Draw a column (bar) chart of diamonds cuts by price, with each bar filled by 
# clarity. You should see a _stacked_ bar chart.


# Draw the same chart again, but with each element positioned to "fill" the y axis


# Draw the same chart again, but with each element positioned to "dodge" each other


# Draw a plot with point geometry with the x-position mapped to `cut` and the 
# y-position mapped to `clarity`
# This creates a "grid" grouping the points


# Use the "jitter" position adjustment to keep the points from all overlapping!
# (This works a little better with a sample of diamond data, such as from the 
# previous exercise).



## Scales

# Draw a "boxplot" (with `geom_boxplot`) for the diamond's price (y) by color (x)


# This has a lot of outliers, making it harder to read. To fix this, draw the 
# same plot but with a _logarithmic_ scale for the y axis.


# For another version, draw the same plot but with `violin` geometry instead of 
# `boxplot` geometry!
# How does the logarithmic scale change the data presentation?


# Another interesting plot: draw a plot of the diamonds price (y) by carat (x), 
# using a heatmap of 2d bins (geom_bin2d)
# What happens when you make the x and y channels scale logarithmically?


# Draw a scatter plot for the diamonds price (y) by carat (x). Color each point
# by the clarity (Remember, this will take a while. Use a sample of the diamonds 
# for faster results)


# Change the color of the previous plot using a ColorBrewer scale of your choice. 
# What looks nice?



## Coordinate Systems

# Draw a bar chart with x-position and fill color BOTH mapped to cut
# For best results, SET the `width` of the geometry to be 1 (fill plot, no space
# between)
# TIP: You can save the plot to a variable for easier modifications


# Draw the same chart, but with the coordinate system flipped


# Draw the same chart, but in a polar coordinate system. It's a Coxcomb chart!



## Facets

# Take the scatter plot of price by carat data (colored by clarity) and add 
# _facets_ based on the diamond's `color`



## Saving Plots

# Use the `ggsave()` function to save the current (recent) plot to disk.
# Name the output file "my-plot.png".
# Make sure you've set the working directory!!

