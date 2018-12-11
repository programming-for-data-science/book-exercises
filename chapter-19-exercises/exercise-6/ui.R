# Libraries
library(plotly)
library(shiny)

# ui.R
shinyUI(fluidPage(
  mainPanel(
    # Add a selectInput (with a proper id) that allows you to select a variable to map
   
    # Plot the map
    plotlyOutput("map")
  )
))