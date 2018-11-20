# Exercise 3: interactive Shiny apps

# Load the shiny, ggplot2, and dplyr libraries
library("shiny")
library("ggplot2")
library("dplyr")

# You will once again be working with the `diamonds` data set provided by ggplot2
# Use dplyr's `sample_n()` function to get a random 3000 rows from the data set
# Store this sample in a variable `diamonds_sample`
diamonds_sample <- sample_n(diamonds, 1000)

# For convenience store the `range()` of values for the `price` column 
# (of the ENTIRE diamonds dataset)
price_range <- range(diamonds$price)

# For convenience, get a vector of column names from the `diamonds` data set to
# use as select inputs
select_values <- colnames(diamonds)


# Define a UI using a `fluidPage()` layout with the following content:

  
  # A `titlePanel` with the title "Diamond Viewer"

  
  # A `sliderInput()` labeled "Price (in dollars)". This slider should let the 
  # user pick a range between the minimum and maximum price of the entire 
  # diamond data set. The initial value should be the vector of min/max price.

  
  # A `selectInput()` labeled "Feature of Interest". This dropdown should let
  # the user pick one of the columns of the diamond data set. Use the `carat`
  # column as a default


  # A `checkboxInput()` labeled "Show Trendline". It's default value is TRUE

  
  # A plotOutput showing the 'plot' output (based on the user specifications)

  
  # Bonus: a dataTableOutput showing a data table of relevant observations



# Define a `server` function (with appropriate arguments)
# This function should perform the following:


  # Assign a reactive `renderPlot()` function to the outputted 'plot' value

    
    # This function should take the `diamonds_sample` data set and filter it by 
    # the input price (remember to get both ends)!

    # Use the filtered data set to create a ggplot2 scatter plot with the carat 
    # on the x-axis, the price on the y-axis, and color based on the clarity. 
    # Facet the plot based on which feature the user selected to "facet by"
    #   (hint: you can just pass that string directly to `facet_wrap()`)
    # Save your plot as a variable.

    
    # Finally, if the "trendline" checkbox is selected, you should also include 
    # a geom_smooth geometry (with `se=FALSE`)
    # Hint: use an if statement to see if you need to add more geoms to the plot
    # Be sure and return the completed plot!

    


# Create a new `shinyApp()` using the above ui and server


## Double Bonus: For fun, can you make a similar browser for the `mpg` data set?
## it makes the bonus data table a lot more useful!