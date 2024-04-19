#### Preamble ####
# Purpose: Cleans the 2021-22 and 2022-23 NBA Most Valuable Player datasets
# Author: Amie Liu
# Date: 19 April 2024
# Contact: amie.liu@mail.utoronto.ca
# License: MIT
# Pre-requisites: 
#   01-download_data.R


#### Workspace setup ####
library(tidyverse)
library(dplyr)
library(janitor)


#### Read data ####
raw_data2023 <- read_csv("data/raw_data/2022-23_raw_data.csv")
raw_data2022 <- read_csv("data/raw_data/2021-22_raw_data.csv")


#### Clean 2022-23 Data ####
cleaned_data2023 <-
  # select specific rows and columns
  raw_data2023[2:11,c(1, 6, 16, 17, 18)] |>
  janitor::clean_names() |>
  # rename columns' names
  rename(
    rank = x1,
    points_won = voting_6,
    field_goal_percentage = shooting_16,
    three_points_percentage = shooting_17,
    free_throw_percentage = shooting_18
  )


#### Clean 2021-22 Data ####
cleaned_data2022 <-
  # select specific rows and columns
  raw_data2022[2:11,c(1, 6, 16, 17, 18)] |>
  janitor::clean_names() |>
  # rename column names
  rename(
    rank = x1,
    points_won = voting_6,
    field_goal_percentage = shooting_16,
    three_points_percentage = shooting_17,
    free_throw_percentage = shooting_18
  ) |>
  # Replace rank 10T to 10
  mutate(
    rank = if_else(rank == "10T", "10", rank)
  )


#### Save data ####
write_csv(cleaned_data2023, "data/analysis_data/analysis_data2023.csv")
write_csv(cleaned_data2022, "data/analysis_data/analysis_data2022.csv")

