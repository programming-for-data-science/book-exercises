# Exercise 3: Mapping U.S. city populations
# (using leaflet)

# Load necessary packages (`dplyr` and `leaflet`)
library("dplyr")
library("leaflet")

# Set your working directory using the RStudio menu:
# Session > Set Working Directory > To Source File Location

# Load the `"data/uscitiesv1.4.csv` file into a variable `populations`
# Make sure strings are *not* read in as factors
populations <- read.csv(
  file = "data/uscitiesv1.4.csv",
  stringsAsFactors = FALSE
)
  
# Because leaflet can only render a few thousand points, create a variable
# `most_populous` that has the 1000 cities with the largest populations
# (hint: use `top_n()`)
most_populous <- populations %>% 
  top_n(1000, wt = population)

# To create a base layer map (that has access to your data), create a variable
# `map` by passing your `most_populous` data to the `leaflet()` function and
# then adding a layer of map tiles (via a pipe %>% ) by calling the 
# `add_tiles()` function. This will create a blank map.
map <- leaflet(most_populous)  %>% 
  addTiles() 

# To add a layer of circles to your map, pipe your `map` variable to the 
# `addCircleMarkers` function, specifying the following:
# - The latitude (`lat`) as the variable `lat` (as a formula)
# - The longitude (`lng`) as the variable `lng` (as a formula)
# - The pop-up text (`popup`) as the variable `city` (as a formula)
# - The outline of each circle (`stroke`) should be `FALSE`
# - The `radius` should be 1, and the `fillOpacity` should be .5
map %>% addCircleMarkers(
    lat = ~lat, # specify the column for `lat` as a formula
    lng = ~lng, # specify the column for `lng` as a formula
    popup = ~city, # show the description in a popup
    stroke = FALSE, # remove border from each circle
    radius = 1,
    fillOpacity = 0.5
  )

# If you want each city to be sized proportionally to the population, 
# you have to compute the desired number of pixels for each marker. Create a 
# new column `radius` that is the population relative to the maximum population
# times a constant number of pixels (e.g., 3). If you want the *area* to be
# proportional to the data, you should *square* this value.
most_populous <- most_populous %>% 
  mutate(radius = (population/max(population) * 3)^2)

# Remake the map from above, specifying the `radius` column as the radius
leaflet(most_populous)  %>% 
  addTiles() %>% 
  addCircleMarkers(
    lat = ~lat, # specify the column for `lat` as a formula
    lng = ~lng, # specify the column for `lng` as a formula
    stroke = FALSE, # remove border from each circle
    popup = ~city, # show the description in a popup
    radius = ~radius,
    fillOpacity = 0.5
  )
