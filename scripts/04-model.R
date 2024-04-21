#### Preamble ####
# Purpose: Models data to predict total MVP voting points based on shooting performance (Field Goal Percentage, Three-Point Percentage, and Free Throw Percentage)
# Author: Amie Liu
# Date: 21 April 2024
# Contact: amie.liu@mail.utoronto.ca
# License: MIT
# Pre-requisites:
#   01-download_data.R
#   02-data_cleaning.R


#### Workspace setup ####
library(tidyverse)
library(rstanarm)

#### Read data ####
analyzed_data2023 <- read_csv("data/analysis_data/analysis_data2023.csv")


### Model data ####
# Fit a linear regression model to predict 'points_won' using FG%, 3P%, and FT%
model2023 <- lm(points_won ~ field_goal_percentage + three_points_percentage + free_throw_percentage, data = analyzed_data2023)

# Check the summary of the model to understand the fit and see the coefficients
summary(model2023)


### Save model ####
saveRDS(
  model2023,
  file = "models/model2023.rds"
)

