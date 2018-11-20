# Exercise 1: Creating a grouped bar chart of cancer rates in King County, WA
# (using plotly)

# Load necessary packages (`dplyr`, `ggplot2`, and `plotly`)
library("dplyr")
library("ggplot2")
library("plotly")

# Set your working directory using the RStudio menu:
# Session > Set Working Directory > To Source File Location

# Load the `"data/IHME_WASHINGTON_MORTALITY_RATES_1980_2014.csv` file
# into a variable `mortality_rates`
# Make sure strings are *not* read in as factors
mortality_rates <- read.csv(
  file = "data/IHME_WASHINGTON_MORTALITY_RATES_1980_2014.csv",
  stringsAsFactors = FALSE
)


# This is actually a very large and rich dataset, but we will only focus on
# a small subset of it. Create a new data frame `plot_data` by filtering the
# `mortality_rates` data to the following:
# - The `location_name` is "King County"
# - The `sex` is *not* "Both"
# - The `cause_name` is "Neoplasms"
# - The `year_id` is greater than 2004
# - Only keep the columns `sex`, `year_id`, and `mortality_rate`
plot_data <- mortality_rates %>%
  filter(
    location_name == "King County",
    sex != "Both",
    cause_name == "Neoplasms",
    year_id > 2004
  ) %>%
  select(sex, year_id, mortality_rate)

# Using ggplot2 (recall chapter 16), make a grouped ("dodge") bar chart of
# mortality rates each year, with different bars for each sex.
# Store this plot in a variable `mort_plot`
mort_plot <- ggplot(plot_data) +
  geom_col(
    mapping = aes(x = year_id, y = mortality_rate, fill = sex),
    position = "dodge"
  )

# To make this plot interactive, pass `mort_plot` to the `ggplotly()` function
# (which is part of the `plotly` package). This will make your plot interactive!
ggplotly(mort_plot)

# As an alternative to making a ggplot chart interactive, we can build the same
# plot using the plotly API directly

# Using the `plot_ly()` function from the `plotly` package, pass in `plot_data`
# as the data, and specify `year_id` as the x variable, mortality_rate as
# the y variable, and `sex` as the color variable. 
# (make sure to specify these as *formulas*)
# Also set the plot type to "bar". Store the result in a variable.
p <- plot_ly(
  data = plot_data, 
  x = ~year_id, 
  y = ~mortality_rate, 
  color = ~sex, 
  type="bar"
)


# You should see that the cancer mortaility rates for female and males 
# each year are plotted next to each other.
# Now that we have the foundation down, we can make our plot more presentable
# by adding a layout to the plot. Add a title for the overall plot, and
# a title for each axes.
p <- p %>% layout(
  title = "Neoplasms Mortality Rate in King County (2005-2014)",
  xaxis = list(title = "Years"),
  yaxis = list(title = "Mortality Rates")
)
