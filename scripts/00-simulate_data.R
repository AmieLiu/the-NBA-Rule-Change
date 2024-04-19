#### Preamble ####
# Purpose: Simulates the dataset for 2021-22 and 2022-23 NBA Most Valuable Player 
# Author: Amie Liu
# Date: 19 April 2024
# Contact: amie.liu@mail.utoronto.ca
# License: MIT
# Pre-requisites: None


#### Workspace setup ####
library(tidyverse)


#### Simulate data ####
# Set a random seed
set.seed(123)

simulated_data2023 <-
  tibble(
    # Use 1 through to 10 to represent each rank
    "Rank" = 1:10,
    # Randomly pick a number between 0 and 1000
    "Points Won" = sample(0:1000, 10, replace = TRUE),
    # Randomly generate a number between 0 and 1 with three decimal places for field goal percentage 
    "Field Goal Percentage" = round(runif(10, min = 0, max = 1) * 1000) / 1000,
    # Randomly generate a number between 0 and 1 with three decimal places for three points percentage
    "Three Points Percentage" = round(runif(10, min = 0, max = 1) * 1000) / 1000,
    # Randomly generate a number between 0 and 1 with three decimal places for free throw percentage
    "Free Throw Percentage" = round(runif(10, min = 0, max = 1) * 1000) / 1000
  )

simulated_data2023
