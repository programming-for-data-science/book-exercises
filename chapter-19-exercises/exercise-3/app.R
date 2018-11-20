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
ui <- fluidPage(

  # A `titlePanel` with the title "Diamond Viewer"
  titlePanel("Diamond Viewer"),

  # A `sliderInput()` labeled "Price (in dollars)". This slider should let the
  # user pick a range between the minimum and maximum price of the entire
  # diamond data set. The initial value should be the vector of min/max price.
  sliderInput(
    "price_choice",
    label = "Price (in dollars)",
    min = price_range[1],
    max = price_range[2],
    value = price_range
  ),

  # A `selectInput()` labeled "Feature of Interest". This dropdown should let
  # the user pick one of the columns of the diamond data set. Use the `carat`
  # column as a default
  selectInput(
    "feature",
    label = "Feature of Interest",
    choices = select_values,
    selected = "carat"
  ),

  # A `checkboxInput()` labeled "Show Trendline". It's default value is TRUE
  checkboxInput("smooth", label = strong("Show Trendline"), value = TRUE),

  # A plotOutput showing the 'plot' output (based on the user specifications)
  plotOutput("plot"),

  # Bonus: a dataTableOutput showing a data table of relevant observations
  dataTableOutput("table")
)


# Define a `server` function (with appropriate arguments)
# This function should perform the following:
server <- function(input, output) {

  # Stand-alone reactive expression for shared data
  filtered <- reactive({
    data <- diamonds_sample %>%
      filter(price > input$price_choice[1], price < input$price_choice[2])
    data # return data
  })

  # Assign a reactive `renderPlot()` function to the outputted 'plot' value
  output$plot <- renderPlot({

    # This function should take the `diamonds_sample` data set and filter it by
    # the input price (remember to get both ends)!

    # Use the filtered data set to create a ggplot2 scatter plot with the carat
    # on the x-axis, the price on the y-axis, and color based on the clarity.
    # Facet the plot based on which feature the user selected to "facet by"
    #   (hint: you can just pass that string directly to `facet_wrap()`)
    # Save your plot as a variable.
    p <- ggplot(data = filtered(), mapping = aes_string(x = input$feature, y = "price", color = "cut")) +
      geom_point()

    # Finally, if the "trendline" checkbox is selected, you should also include
    # a geom_smooth geometry (with `se=FALSE`)
    # Hint: use an if statement to see if you need to add more geoms to the plot
    # Be sure and return the completed plot!
    if (input$smooth) {
      p <- p + geom_smooth(se = FALSE)
    }

    p # return the plot
  })

# Create a new `shinyApp()` using the above ui and server
shinyApp(ui = ui, server = server)

## Double Bonus: For fun, can you make a similar browser for the `mpg` data set?
## it makes the bonus data table a lot more useful!
