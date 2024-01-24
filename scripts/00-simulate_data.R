#### Preamble ####
# Purpose: Simulate data set of death of people experiencing homelessness from 2017 to 2023
# Author: Sky Suh
# Date: 20 January 2024 
# Contact: sky.suh@mail.utoronto.ca
# License: MIT
# Pre-requisites: none
# Data sets:
## - https://open.toronto.ca/dataset/deaths-of-people-experiencing-homelessness/
# Note: Only download the dataset of death of people who experienced homeless from the opendatatoronto webpage

#### Simulate for dataset of death of homeless ####
#Referenced code from: https://tellingstorieswithdata.com/02-drinking_from_a_fire_hose.html

#### Data Expectations ####
# Number of death of homeless people from 2017 to 2023
# Expect that there are relations with the death tolls and the period of before/after COVID-19
# Higher number of death will be on during the pandemic between 2020 to 2022

#### Workspace setup ####
# install.packages("tidyverse")
# install.packages("janitor")

library(tidyverse)
library(janitor)

##Hypothesis##

# Fictional year, month, gender, age_gap and death_counts
sim_year = c(2018, 2019, 2020, 2021, 2022)
sim_month = c(1, 3, 7, 10, 12)
sim_age_gap = c("15-19", "24-29", "36-42", "55-67", "72-89")
sim_gender = c("Male", "Female", "Non-binary", "Transgender", "Unknown")
sim_cause = c("COVID-19", "Unknown", "Accident", "Suicide", "Drug")

# Probabilities used for sampling
#sample = 1
prob_year = c(0.1, 0.1, 0.3, 0.3, 0.2)
prob_month = c(0.1, 0.2, 0.5, 0.1, 0.1)
prob_age_gap = c(0.1, 0.1, 0.2, 0.2, 0.4)
prob_gender = c(0.3, 0.3, 0.2, 0.1, 0.1)
prob_cause = c(0.4, 0.1, 0.1, 0.1, 0.3)


#simulated_Data randomly with random seed
#random seed
set.seed(337) 
num_observations = 135

simulated_data = 
  tibble(
    # Use 2017 through to 2023 to represent each death_counts
    death_counts = c(1:num_observations),
    year = sample(x = sim_year, 
                      size = num_observations,
                      replace = TRUE,
                      prob = prob_year),
    month = sample(x = sim_month,
                  size = num_observations,
                  replace = TRUE,
                  prob = prob_month),
    gender = sample(x = sim_gender,
                   size = num_observations,
                   replace = TRUE,
                   prob = prob_gender),
    age_gap = sample(x = sim_age_gap,
                   size = num_observations,
                   replace = TRUE,
                   prob = prob_age_gap),
    cause = sample(x = sim_cause,
                     size = num_observations,
                     replace = TRUE,
                     prob = prob_cause),
  )

## Statistics summary of death counts per month/cause/demographic 

# summary death counts by month
clinic_per_district = 
  simulated_data |>
  group_by(month) |>
  count() |>
  rename("num_death_counts" = "n")

# add year column to the data
month_by_death_counts ['year'] = sim_year

# summary death counts by month
death_counts_by_month = 
  simulated_data |>
  group_by(month) |>
  count() |>
  rename("num_death_counts" = "n")

# add year column to the data
month_by_death_counts ['year'] = sim_year

# summary death counts by cause
death_counts_by_cause = 
  simulated_data |>
  group_by(cause) |>
  count() |>
  rename("num_death_counts" = "n")

# add year column to the data
month_by_death_counts ['year'] = sim_year

# summary death counts by demographic
death_counts_by_demographic = 
  simulated_data |>
  group_by(demographic) |>
  count() |>
  rename("num_death_counts" = "n")

# add year column to the data
month_by_death_counts ['year'] = sim_year


## Create graphs by simulated data

# Histogram/Bargraph of death_counts by cause
simulated_data |> 
  ggplot(aes(fill = cause, x = death_counts_by_cause)) +
  geom_bar(position = "dodge")

## Create graph of Death of Homeless Before/After COVID-19 Pandemic by year

Death_of_Homeless_Before_After_COVID-19-Pandemic_by_year
  ggplot(aes(x = year_of_death, y = death_counts_by_year)) + 
  geom_bar(stat="identity") + 
  theme_classic()

## Create graph of Death of Homeless Before/After COVID-19 Pandemic by month

Death_of_Homeless_Before_After_COVID-19-Pandemic_by_month
  ggplot(aes(x = month_of_death, y = death_counts_by_month)) + 
    geom_bar(stat="identity") + 
    theme_classic()
