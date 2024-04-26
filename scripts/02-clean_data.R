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
library(arrow)

#### Clean data ####
raw_data_NKE <- read_csv("data/raw_data/raw_data_NKE.csv")
raw_data_PRKS <- read_csv("data/raw_data/raw_data_PRKS.csv")
raw_data_SBUX <- read_csv("data/raw_data/raw_data_SBUX.csv")
raw_data_SPX <- read_parquet("data/raw_data/raw_data_SPX.parquet")
raw_data_DJI <- read_parquet("data/raw_data/raw_data_DJI.parquet")
raw_data_NDX <- read_parquet("data/raw_data/raw_data_NDX.parquet")

## Selecting only the date and stock price at close
# Cleaning dates referenced code from: https://epirhandbook.com/en/working-with-dates.html

# Nike
cleaned_data_NKE <-
  raw_data_NKE |>
  select(Date, Close) |> 
  mutate(Date = lubridate::ymd(Date))
cleaned_data_NKE$Date <- 
  as.Date(cleaned_data_NKE$Date, format='%Y-%m-%d')

class(cleaned_data_NKE$Date)


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

# S&P 500
cleaned_data_SPX <-
  raw_data_SPX |>
  select(symbol, date, close)

# Don Jones Index
cleaned_data_DJI <-
  raw_data_DJI |>
  select(symbol, date, close)

# Nasdaq 100 Index
cleaned_data_NDX <-
  raw_data_NDX |>
  drop_na() |>
  select(symbol, date, close)

#### Save data ####
# Nike
write_parquet(cleaned_data_NKE, "data/analysis_data/cleaned_data_NKE.parquet")

# United Parks and Resorts
write_parquet(cleaned_data_PRKS, "data/analysis_data/cleaned_data_PRKS.parquet")

# Starbucks
write_parquet(cleaned_data_SBUX, "data/analysis_data/cleaned_data_SBUX.parquet")

# S&P 500
write_parquet(cleaned_data_SPX, "data/analysis_data/cleaned_data_SPX.parquet")

# DJI
write_parquet(cleaned_data_DJI, "data/analysis_data/cleaned_data_DJI.parquet")

# Nasdaq 100
write_parquet(cleaned_data_NDX, "data/analysis_data/cleaned_data_NDX.parquet")
