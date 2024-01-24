#### Preamble ####
# Purpose: Simulate data set of death of people experiencing homelessness from 2017 to 2023
# Author: Sky Suh
# Date: 20 January 2024 
# Contact: sky.suh@mail.utoronto.ca
# License: MIT
# Pre-requisites: 
  # 00-simulate_data.R
  # 01-download_data.R
  # 02-data_cleaning.R
#Code referenced from:https://tellingstorieswithdata.com/02-drinking_from_a_fire_hose.html
# Data sets:
## - https://open.toronto.ca/dataset/deaths-of-people-experiencing-homelessness/

#### Workspace setup ####
library(tidyverse)

#### Test data ####

data$cleaned_cause_data |> min() == 2017
data$cleaned_cause_data |> max() == 2023

data$cleaned_month_data |> min() >= "January"
data$cleaned_month_data |> max() <= "December"
data$cleaned_month_datah |> class() == "character"

cleaned_demographic_data$age_group |>
  unique() |>
  length() == 5

cleaned_demographic_data$gender |>
  unique() |>
  length() == 4

