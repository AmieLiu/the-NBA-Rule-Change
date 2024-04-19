#### Preamble ####
# Purpose: Tests data
# Author: Amie Liu
# Date: 19 April 2024
# Contact: amie.liu@mail.utoronto.ca
# License: MIT
# Pre-requisites:
#   01-download_data.R
#   02-data_cleaning.R


#### Workspace setup ####
library(tidyverse)


#### Read data ####
cleaned_data2023 <- read_csv("data/analysis_data/analysis_data2023.csv")
cleaned_data2022 <- read_csv("data/analysis_data/analysis_data2022.csv")


#### Test data ####
# Check if all column names match the specified names and order: "rank", "points_won", "field_goal_percentage", "three_points_percentage", "free_throw_percentage"
all(colnames(cleaned_data2023) == c("rank", "points_won", "field_goal_percentage", "three_points_percentage", "free_throw_percentage"))
all(colnames(cleaned_data2022) == c("rank", "points_won", "field_goal_percentage", "three_points_percentage", "free_throw_percentage"))

# Check if the length of "rank" is 10
cleaned_data2023$rank |> length() == 10
cleaned_data2022$rank |> length() == 10

# Check if the minimum value of "rank" is 1
cleaned_data2023$rank |> min() == 1
cleaned_data2022$rank |> min() == 1

# Check if the maximum value of "rank" is 10
cleaned_data2023$rank |> max() == 10
cleaned_data2022$rank |> max() == 10

# Check if the largest value of "points_won" is smaller or equal to 1000
cleaned_data2023$points_won |> max() <= 1000
cleaned_data2022$points_won |> max() <= 1000

# Check if the smallest value of "points_won" is larger or equal to 0
cleaned_data2023$points_won |> min() >= 0
cleaned_data2022$points_won |> min() >= 0

# Check if all values of "field_goal_percentage" is smaller than 1
all(cleaned_data2023$field_goal_percentage < 1) 
all(cleaned_data2022$field_goal_percentage < 1) 

# Check if all values of "three_points_percentage" is smaller than 1
all(cleaned_data2023$three_points_percentage < 1) 
all(cleaned_data2022$three_points_percentage < 1) 

# Check if all values of "free_throw_percentage" is smaller than 1
all(cleaned_data2023$free_throw_percentage < 1) 
all(cleaned_data2022$free_throw_percentage < 1) 
