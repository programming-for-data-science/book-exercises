# Exercise 7: using dplyr on external data

# Load the `dplyr` library
library(dplyr)

# Use the `read.csv()` function to read in the included data set. Remember to
# save it as a variable.
team_data <- read.csv("data/nba_teams_2016.csv", stringsAsFactors = FALSE)

# View the data frame you loaded, and get some basic information about the
# number of rows/columns.
# Note the "X" preceding some of the column titles as well as the "*" following
# the names of teams that made it to the playoffs that year.
View(team_data)

# Add a column that gives the turnovers to steals ratio (TOV / STL) for each team
team_data <- mutate(team_data, Ratio = TOV / STL)

# Sort the teams from lowest turnover/steal ratio to highest
# Which team has the lowest turnover/steal ratio?
team_data %>%
  filter(Ratio == min(Ratio)) %>%
  select(Team)

# Using the pipe operator, create a new column of assists per game (AST / G)
# AND sort the data.frame by this new column in descending order.
team_data <- mutate(team_data, ASTGM = AST / G) %>% arrange(-ASTGM)

# Create a data frame called `good_offense` of teams that scored more than
# 8700 points (PTS) in the season
good_offense <- filter(team_data, PTS > 8700)

# Create a data frame called `good_defense` of teams that had more than
# 470 blocks (BLK)
good_defense <- filter(team_data, BLK > 470)

# Create a data frame called `offense_stats` that only shows offensive
# rebounds (ORB), field-goal % (FG.), and assists (AST) along with the team name.
offense_stats <- select(team_data, Team, ORB, FG., AST)

# Create a data frame called `defense_stats` that only shows defensive
# rebounds (DRB), steals (STL), and blocks (BLK) along with the team name.
defense_stats <- select(team_data, Team, DRB, STL, BLK)

# Create a function called `better_shooters` that takes in two teams and returns
# a data frame of the team with the better field-goal percentage. Include the
# team name, field-goal percentage, and total points in your resulting data frame
better_shooters <- function(team1, team2) {
  better_team <- filter(team_data, Team %in% c(team1, team2)) %>%
    filter(FG. == max(FG.)) %>%
    select(Team, FG., PTS)

  better_team
}

# Call the function on two teams to compare them (remember the `*` if needed)
better.shooter <- BetterShooters("Golden State Warriors*", "Cleveland Cavaliers*")
better.shooter
