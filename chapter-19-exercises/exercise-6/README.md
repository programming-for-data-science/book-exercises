# Exercise 6
In this exercise, you'll practice building an interactive Plotly map in a Shiny application. 

As in previous exercises, you should fork and clone this repository, then follow the instructions below.

## server.R
Your `server.R` file already loads the data you need, as well as scripts for building a map. Inside your `shinyServer`, you should do the following:

- Replace the static input `'population'` with a dynamic value that comes from your UI

## ui.R
Your `ui.R` file already has a `tabPanel` built displaying your map. In this section, you should add another `tabPanel` for your scatter-plot by doing the following:

- Add a `selectInput` (with a proper id) that allows you to select a variable to map (`population`, `votes`, or `ratio`)

Also, make sure you look at the `build_map.R` file and **understand how it is using variables to make a dynamic application**.
