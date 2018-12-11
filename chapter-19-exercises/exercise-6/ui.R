# Libraries
library(plotly)
library(shiny)

# ui.R
shinyUI(fluidPage(
  mainPanel(
    # Add a selectInput (with a proper id) that allows you to select a variable to map
    selectInput("mapvar", 
      label = "Variable to Map", 
      choices = list("Population" = "population", 
                     "Electoral Votes" = "votes", 
                     "Votes / Population" = "ratio")),
    
    # Use plotlyOutput to show your map
    plotlyOutput("map")
  )
))