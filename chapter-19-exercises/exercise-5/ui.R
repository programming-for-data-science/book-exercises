# UI for scatterplot
library(shiny)
library(ggplot2)
# Get a vector of column names (from `mpg`) to use as select inputs
select_values <- colnames(mpg)

# Create a shinyUI with a `fluidPage` layout
shinyUI(fluidPage(
  # A page header
  h1("MPG Dataset Exploration"), 
  
  # Add a `selectInput` for the `x` variable
  selectInput(
    "x_var",
    label = "X Variable", 
    choices = select_values, 
    selected = "displ"
  ), 
  
  # Add a `selectInput` for the `y` variable
  selectInput(
    "y_var",
    label = "Y Variable", 
    choices = select_values, 
    selected = "cyl"
  ),

  # Add a `sliderInput` to set the `size` of each point
  sliderInput("size", label = "Size of point", min = 1, max = 10, value = 5),

  # Add a `selectInput` that allows you to select a color from a list of choices
  selectInput(
    "color",
    label = "Color", 
    choices = list("Red" = "red", "Blue" = "blue", "Green" = "green")
  ),


  # Plot the output with the name "scatter"
  plotOutput("scatter")
))