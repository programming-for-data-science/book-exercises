# UI for scatterplot
library(shiny)
library(ggplot2)

# Get a vector of column names (from `mpg`) to use as select inputs

# Create a variable `x_input` that stores a `selectInput()` for your
# variable to appear on the x axis of your chart.
# Use the vector of column names as possible values, and make sure
# to assign an inputId, label, and selected value


# Using a similar approach, create a variable `y_input` that stores a
# `selectInput()` for your variable to appear on the y axis of your chart.
# Add a `selectInput` for the `y` variable


# Create a variable `color_input` as a `selectInput()` that allows users to
# select a color from a list of choices


# Create a variable `size_input` as a `sliderInput()` that allows users to
# select a point size to use in your `geom_point()`


# Create a variable `ui` that is a `fluidPage()` ui element. 
# It should contain:

  # A page header with a descriptive title


  # Your x input

  
  # Your y input

  
  # Your color input

  
  # Your size input

  
  # Plot the output with the name "scatter" (defined in `app_server.R`)

