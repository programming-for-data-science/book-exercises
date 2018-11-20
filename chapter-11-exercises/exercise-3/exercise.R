# Exercise 3: using the pipe operator

# Install (if needed) and load the "dplyr" library
# install.packages("dplyr")
library("dplyr")

# Install (if needed) and load the "fueleconomy" package
# install.packages("devtools")
# devtools::install_github("hadley/fueleconomy")
library("fueleconomy")

# Which 2015 Acura model has the best hwy MGH? (Use dplyr, but without method
# chaining or pipes--use temporary variables!)
acuras <- filter(vehicles, make == "Acura", year == 2015)
best_acura <- filter(acuras, hwy == max(hwy))
best_model <- select(best_acura, model)

# Which 2015 Acura model has the best hwy MPG? (Use dplyr, nesting functions)
best_model <- select(
  filter(
    filter(vehicles, make == "Acura", year == 2015), hwy == max(hwy)
  ), model
)

# Which 2015 Acura model has the best hwy MPG? (Use dplyr and the pipe operator)
best_model <- filter(vehicles, make == "Acura", year == 2015) %>%
  filter(hwy == max(hwy)) %>%
  select(model)


### Bonus

# Write 3 functions, one for each approach.  Then,
# Test how long it takes to perform each one 1000 times

# Without chaining
temp_vars_best_model <- function() {
  acuras <- filter(vehicles, make == "Acura", year == 2015)
  best.acura <- filter(acuras, hwy == max(hwy))
  best.model <- select(best_acura, model)
}

# Nested functions
nested_best_model <- function() {
  best_model <- select(
    filter(
      filter(vehicles, make == "Acura", year == 2015), hwy == max(hwy)
    ), model
  )
}

# Pipe operator
pipe_best_model <- function() {
  best_model <- filter(vehicles, make == "Acura", year == 2015) %>%
    filter(hwy == max(hwy)) %>%
    select(model)
}

# Pretty similar results; use which is most readable!
system.time(for (i in 1:1000) temp_vars_best_model())
system.time(for (i in 1:1000) nested_best_model())
system.time(for (i in 1:1000) pipe_best_model())
