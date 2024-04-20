#### Preamble ####
# Purpose: Cleans the stock data downloaded from Yahoo Finance Canada
# Author: Jessica Im
# Date: 4 April 2024
# Contact: jessica.im@mail.utoronto.ca
# License: MIT
# Pre-requisites: Download data by referencing READ ME
# Any other information needed?

#### Workspace setup ####
library(tidyverse)

#### Clean data ####
raw_data_NKE <- read_csv("data/raw_data/raw_data_NKE.csv")
raw_data_PRKS <- read_csv("data/raw_data/raw_data_PRKS.csv")
raw_data_SBUX <- read_csv("data/raw_data/raw_data_SBUX.csv")

## Selecting only the date and stock price at close
# Cleaning dates referenced code from: https://epirhandbook.com/en/working-with-dates.html

# Nike
cleaned_data_NKE <-
  raw_data_NKE |>
  select(Date, Close) |> 
  mutate(Date = lubridate::ymd(Date))
cleaned_data_NKE$Date <- 
  as.Date(cleaned_data_NKE$Date, format='%Y-%m-%d')


# United Parks and Resorts
cleaned_data_PRKS <-
  raw_data_PRKS |>
  select(Date, Close) |>
  mutate(Date = lubridate::ymd(Date))
cleaned_data_PRKS$Date <- 
  as.Date(cleaned_data_PRKS$Date, format='%Y-%m-%d')

# Starbucks
cleaned_data_SBUX <-
  raw_data_SBUX |>
  select(Date, Close) |> 
  mutate(Date = lubridate::ymd(Date))
cleaned_data_SBUX$Date <- 
  as.Date(cleaned_data_SBUX$Date, format='%Y-%m-%d')

#### Save data ####
# Nike
write_csv(cleaned_data_NKE, "data/analysis_data/cleaned_data_NKE.parquet")

# United Parks and Resorts
write_csv(cleaned_data_PRKS, "data/analysis_data/cleaned_data_PRKS.parquet")

# Starbucks
write_csv(cleaned_data_SBUX, "data/analysis_data/cleaned_data_SBUX.parquet")
