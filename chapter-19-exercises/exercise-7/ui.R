# ui.R
library(shiny)
library(plotly)
shinyUI(navbarPage(
  "Electoral College",
  # Create a tab panel for your map
  tabPanel(
    "Map",
    titlePanel("Electoral College Votes"),
    # Create sidebar layout
    sidebarLayout(

      # Side panel for controls
      sidebarPanel(

        # Input to select variable to map
        selectInput(
          "mapvar",
          label = "Variable to Map",
          choices = list(
            "Population" = "population",
            "Electoral Votes" = "votes",
            "Votes / Population" = "ratio"
          )
        )
      ),

      # Main panel: display plotly map
      mainPanel(
        plotlyOutput("map")
      )
    )
  ),

  # Create a tabPanel to show your scatter plot
  tabPanel(
    "Scatter",
    # Add a titlePanel to your tab
    titlePanel("Population v.s. Vote Power"),

    # Create a sidebar layout for this tab (page)
    sidebarLayout(

      # Create a sidebarPanel for your controls
      sidebarPanel(

        # Make a textInput widget for searching for a state in your scatter plot
        textInput("search", label = "Find a State", value = "")
      ),

      # Create a main panel, in which you should display your plotly Scatter plot
      mainPanel(
        plotlyOutput("scatter")
      )
    )
  )
))