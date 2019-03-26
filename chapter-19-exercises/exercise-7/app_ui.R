# ui.R
library(shiny)
library(plotly)

# Define a variable `map_sidebar_content` that is a `sidebarPanel()` for your
# first (map) page that contains:
  # An input to select variable to map

# Define a variable `map_main_content` that is a `mainPanel()` for your
# first (map) page that contains the `plotlyOutput()` of your map

# Create a variable `map_panel` that stores a `tabPanel()` for your first page
# It should include the following:
  # A `sidebarLayout()` that contains...
    
    # Your `map_sidebar_content`
    
    # Your `map_main_content`


# Define a variable `scatter_sidebar_content` that is a `sidebarPanel()` for 
# your second (scatter) page that contains:
# - a `textInput()` widget for searching for a state in your scatter plot


# Define a variable `scatter_main_content` that is a `mainPanel()` for your
# second (scatter) page that contains the `plotlyOutput()` of your scatter


# Create a variable `scatter_panel` that stores a `tabPanel()` for your 2nd page
# It should include the following:
  
  # Add a titlePanel to your tab
  
  # Create a sidebar layout for this tab (page)
    
    # Display your `scatter_sidebar_content`
    
    
    # Display your `scatter_main_content`
    
# Define a variable `ui` storing a `navbarPage()` element containing
# your two pages defined above
