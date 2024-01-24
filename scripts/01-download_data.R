library(tidyverse)
library(janitor)
library(dplyr)

raw_cause_data <- read_csv("raw_cause_data.csv")
raw_month_data <- read_csv("raw_month_data.csv")
raw_demographic_data <- read_csv("raw_demographic_data.csv")


cleaned_cause_data <-
  clean_names(raw_cause_data)

cleaned_month_data <-
  clean_names(raw_month_data)

cleaned_demographic_data <-
  clean_names(raw_demographic_data)

data <- read.csv("raw_cause_data.csv")

selected_columns <- c("X.id", "Year.of.death", "Cause_of_death", "Count")
raw_cause_data <- select(raw_cause_data, "X_id", "Year.of.death", "Cause_of_death", "Count")

raw_cause_data_no_missing <- raw_cause_data %>% na.omit()

raw_cause_data_unique <- raw_cause_data_no_missing %>% distinct()

threshold <- 3
raw_cause_data_no_outliers <- raw_cause_data_unique 

raw_cause_data_no_outliers$Count <- as.numeric(raw_cause_data_no_outliers$Count)

raw_cause_data_no_outliers$new_variable <- raw_cause_data_no_outliers$Year.of.death * 2

summary(raw_cause_data_no_outliers)



cleaned_cause_data2 <- select(cleaned_cause_data, x_id,year_of_death,cause_of_death, count)

cleaned_cause_data3 <- select(cleaned_cause_data, year_of_death,count)



write_csv(cleaned_cause_data,"cleaned_cause_data.csv")
write_csv(cleaned_month_data,"cleaned_month_data.csv")
write_csv(cleaned_demographic_data,"cleaned_demographic_data.csv")
write.csv(cleaned_cause_data2, "cleaned_cause_data2.csv", row.names = FALSE)
write_csv(cleaned_cause_data3,"cleaned_cause_data3.csv")
