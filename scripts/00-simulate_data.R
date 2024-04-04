#### Preamble ####
# Purpose: Simulates stock price change of 
# Author: Jessica Im
# Date: 28 March 2024
# Contact: jessica.im@mail.utoronto.ca
# License: MIT
# Pre-requisites: None


#### Workspace setup ####
library(tidyverse)
library(dplyr)

#### Simulate data ####
set.seed(250)

# simulate data of Company Nike from 1 week before boycotts began to 1 week after they ended
KO_simulated_data <-
  tibble(
    date =
      seq(as.Date('1991-07-11'), as.Date('1998-05-19'), by = "days"),
    
    # size represents the number of days observed
    close = 
      sample(
        rep(c(16:32)),
        size = 2505,
        replace = TRUE),
      )

#### Graph simulated data ####
KO_simulated_data |>
  ggplot(mapping = aes(x = date, y = close)) +
  geom_line(color="grey") +
  theme_light() +
  labs(x = "July 11th, 1991 to May 19th, 1998", y = "Stock Price at Closing", caption = "Daily change in stock price of Nike from July 11th, 1991 to May 19th, 1998.")
