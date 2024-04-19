#### Preamble ####
# Purpose: Downloads and saves data from Yahoo Finance
# Author: Jessica Im
# Date: 17 April 2024
# Contact: jessica.im@mail.utoronto.ca
# License: MIT
# Pre-requisites: Download data from Yahoo Finance
# Any other information needed?


#### Workspace setup ####
library(opendatatoronto)
library(tidyverse)

#### Download data ####
raw_data_NKE <- read_csv("data/raw_data/raw_data_NKE.csv")
raw_data_PRKS <- read_csv("data/raw_data/raw_data_PRKS.csv")
raw_data_SBUX <- read_csv("data/raw_data/raw_data_SBUX.csv")

#### Save data ####
write_csv(raw_data_NKE, "data/raw_data/raw_data_NKE.csv") 
write_csv(raw_data_PRKS, "data/raw_data/raw_data_PRKS.csv")
write_csv(raw_data_SBUX, "data/raw_data/raw_data_SBUX.csv")
