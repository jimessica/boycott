#### Preamble ####
# Purpose: Simulates stock prices of 5 boycotted U.S. companies from 1980 to 2020
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

# simulate data of company 1 from 1 year before to 1 year after boycott
KO_simulated_data <-
  tibble(
    date =
      seq(as.Date('2002-06-01'), as.Date('2006-05-01'), by = "months"),
    
    # size is 48 to represent the number of months in total between 1 year before boycott began and 1 year after it ended
    high = 
      sample(
        rep(c(16:32)),
        size = 48,
        replace = TRUE),
    
    volume =
      sample(
        rep(c(1000000:99999999)),
        size = 48,
        replace = TRUE),
      )

KO_simulated_data