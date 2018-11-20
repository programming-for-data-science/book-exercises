# Load libraries so they are available
library("shiny")

# Define a `ui` variable, assigning it a `navbarPage()` layout.
#   You will use `shinyUI()` to render this variable (bottom of the script)
# Give the layout a title of "Income Inequality".
# The layout should include the following elements:


  # A `tabPanel()` with a title "Introduction" to represent the first tab.
  # This layout will contain the following elements:


    # A `titlePanel()` with the text "Income Inequality"


    # A paragraph `p()` describing with the text: "The below diagram was created
    # by the New York Times to illustrate the increasing level of inequality in
    # the US."


    # An image `img()` to display. This content should have a `src` attribute of
    # "inequality.png" (which will refer to the file in the `www/` folder).


    # A paragraph containing a hyperlink `a()` to the source of the article at
    # https://www.nytimes.com/interactive/2017/08/07/opinion/leonhardt-income-inequality.html


    # A paragraph containing a 1-2 sentence description of what the diagram
    # shows. Your paragraph should include both `strong()` and emphasized `em()`
    # text.


  # The navbarPage layout should have a second `tabPanel()` titled "Growth Chart"
  # This layout should contain the following elements:


    # A `titlePanel()` with the text "Income growth 1980-2014"


    # A `sidebarLayout()` to create two columns.
    # The sidebar layout will contain elements:


      # A `sidebarPanel()` layout to organize the side bar. The sidebar contains:


        # A `sliderInput()` for the 'percentile' value, labeled "Income Percentile".
        # This slider should let the user pick a range between 0 and 100


      # The `sidebarLayout` also contains a `mainPanel()` for the main content.
      # The `mainPanel` contains


        # A `plotOutput()` element showing the 'plot' output


        # A paragraph with a hyperlink to the data source http://gabriel-zucman.eu/usdina/

