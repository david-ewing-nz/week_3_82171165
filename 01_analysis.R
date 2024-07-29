summary_by_airline <- flights_clean_with_names %>%
  group_by(name) %>%
  summarise(
    mean_dep_delay = mean(dep_delay,na.rm = TRUE),
    mean_arr_delay = mean(arr_delay, na.rm = TRUE)
  )

print(summary_by_airline)
