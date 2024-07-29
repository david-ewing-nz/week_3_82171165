# instructions of section 3.3

if (!requireNamespace("tidyverse", quietly = TRUE)) {
  install.packages("tidyverse")
}

if (!requireNamespace("nycflights13", quietly = TRUE)) {
  install.packages("nycflights13")
}

suppressPackageStartupMessages(library(tidyverse))
library(nycflights13)

# section 3.4
head(flights)


# section 3.6
flights_clean <- flights %>%
  select(year, month, day, carrier, dep_delay, arr_delay) %>%
  left_join(airlines, by="carrier") 

flights_clean_with_names <- flights_clean %>% select(-carrier)


