# Build Scatter file: function that returns a plotly Scatter plot
library(plotly)
library(stringr)

### Build Scatter ###
build_scatter <- function(data,  search = "", xvar = "population", yvar = "votes") {
  # Get x and y max
  xmax <- max(data[,xvar]) * 1.5
  ymax <- max(data[,yvar]) * 1.5
  
  # Filter data based on search 
  data <- data %>% 
    filter(grepl(search, state))
  
  # Plot data
  p <- plot_ly(x = data[, xvar],
            y = data[, yvar], 
            mode="markers", 
            marker = list(
              opacity = .4, 
              size = 10
            )) %>% 
    layout(xaxis = list(range = c(0, xmax), title = xvar), 
           yaxis = list(range = c(0, ymax), title = yvar)
    )
  return(p)
}