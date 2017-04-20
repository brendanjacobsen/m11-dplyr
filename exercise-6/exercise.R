# Exercise 6: DPLYR join introduction

# Install the nycflights13 package and read it in. Require the dplyr package.
#install.packages(c("nycflights13", "dplyr"))

library(nycflights13)
library(dplyr)

View()
# Create a dataframe of the average arrival delay for each destination, then use left_join
# to join on the "airports" dataframe, which has the airport info

avg.arrival.dleay <- flights %>%
  group_by(dest) %>%
  summarise(avg.delay = mean(arr_delay, na.rm =TRUE)) %>%
  mutate(faa = dest) %>%
  left_join(airports, by='carrier') %>%
  arrange(-avg.delay)

  
  #average.arival.delay <- data.frame()left_join()


# Create a dataframe of the average arrival delay for each airline, then use left_join
# to join on the "airlines" dataframe, which has the airline info



### Bonus ###
# Calculate the average delay by city AND airline, then merge on the city and airline information


# If you're running into sorting issues:
# http://stackoverflow.com/questions/26555297/dplyr-arrange-a-grouped-df-by-group-variable-not-working