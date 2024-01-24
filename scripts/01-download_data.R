library(tidyverse)
library(opendatatoronto)

list<-list_package_resources("https://open.toronto.ca/dataset/deaths-of-people-experiencing-homelessness/")

raw_cause_data <- 
  list[6,] %>%
  get_resource

raw_month_data <- 
  list[2,] %>%
  get_resource

raw_demographic_data <- 
  list[10,] %>%
  get_resource()

write_csv(raw_cause_data,"raw_cause_data.csv")
write_csv(raw_month_data,"raw_month_data.csv")
write_csv(raw_demographic_data,"raw_demographic_data.csv")
