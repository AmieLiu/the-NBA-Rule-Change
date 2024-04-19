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

simulated_data <-
  tibble(
    # Use 1 through to 10 to represent each rank
    "Rank" = 1:10,
    # Randomly pick an option, with replacement, 151 times
    "Party" = sample(
      x = c("Liberal", "Labor", "National", "Green", "Other"),
      size = 151,
      replace = TRUE
    )
  )

simulated_data
