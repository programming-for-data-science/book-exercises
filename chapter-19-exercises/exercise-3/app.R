# Exercise 3: interactive Shiny apps

# Load the shiny, ggplot2, and dplyr libraries
library("shiny")
library("ggplot2")
library("dplyr")

# You will again be working with the `diamonds` data set provided by ggplot2
# Use dplyr's `sample_n()` function to get a random 1000 rows from the data set
# Store this sample in a variable `diamonds_sample`
diamonds_sample <- sample_n(diamonds, 1000)

# For convenience store the `range()` of values for the `price` column
# (of your sample)
price_range <- range(diamonds$price)

# For convenience, get a vector of column names from the `diamonds` data set to
# use as select inputs
select_values <- colnames(diamonds)

# To help keep the code organized, we'll store some UI elements in variables
# _before_ defining the UI.

# Define a variable `price_input` that is a `sliderInput()` with the following
# properties:
# - an inputId of `price_choice`
# - a label of "Price (in dollars)"
# - min and max valuesvalue based on the `price_range` calculated above
# - a current value equal to the price range

price_input <- sliderInput(
  inputId = "price_choice",
  label = "Price (in dollars)",
  min = price_range[1],
  max = price_range[2],
  value = price_range
)

# Define a variable `feature_input` that is a `selectInput()` with the
# label "Feature of Interest". This dropdown should let the user pick one of
# the columns of the diamond data set. Use the `carat` column as a default
# Make sure to set an inputId to reference in your server!
feature_input <- selectInput(
  inputId = "feature",
  label = "Feature of Interest",
  choices = select_values,
  selected = "carat"
)

# Define a UI using a `fluidPage()` layout with the following content:
ui <- fluidPage(

  # A `titlePanel` with the title "Diamond Viewer"
  titlePanel("Diamond Viewer"),

  # Your `prince_input`
  price_input,

  # Your `feature_input`
  feature_input,

  # A `checkboxInput()` labeled "Show Trendline". It's default value is TRUE
  checkboxInput("smooth", label = strong("Show Trendline"), value = TRUE),

  # A plotOutput showing the 'plot' output (based on the user specifications)
  plotOutput("plot")
)


# Define a `server` function (with appropriate arguments)
# This function should perform the following:
server <- function(input, output) {

  # Assign a reactive `renderPlot()` function to the outputted 'plot' value
  output$plot <- renderPlot({

    # This function should first filter down the `diamonds_sample` data
    # using the input price range (remember to get both ends)!
    plot_data <- diamonds_sample %>%
      filter(price > input$price_choice[1], price < input$price_choice[2])

    # Use the filtered data set to create a ggplot2 scatter plot with the
    # user-select column on the x-axis, and the price on the y-axis,
    # and encode the "cut" of each diamond using color
    # Save your plot as a variable.
    p <- ggplot(
      data = plot_data,
      mapping = aes_string(x = input$feature, y = "price", color = "cut")
    ) +
      geom_point()

    # Finally, if the "trendline" checkbox is selected, you should add (+)
    # a geom_smooth geometry (with `se=FALSE`) to your plot
    # Hint: use an if statement to see if you need to add more geoms to the plot

    if (input$smooth) {
      p <- p + geom_smooth(se = FALSE)
    }

    # Be sure and return the completed plot!
    p
  })
}

# Create a new `shinyApp()` using the above ui and server
shinyApp(ui = ui, server = server)
