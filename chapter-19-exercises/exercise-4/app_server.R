# Load libraries so they are available
library("shiny")
library("ggplot2")

# Read data file
income_growth <- read.csv('data/income_growth_1980-2014.csv')

# Define a server function
server <- function(input, output) {
  
  output$plot <- renderPlot({
    # return the plot
    ggplot(data = income_growth) +
      geom_point(mapping = aes(x = Income.Percentile, y = Average.Growth.Perc), color = "gray") +
      geom_point(mapping = aes(x = Income.Percentile, y = Post.Tax.Growth.Perc), color = "red") +
      labs(x = "Income Percentile", y = "Income Growth (%)") +
      scale_x_continuous(limits = input$percentile)
  })
}