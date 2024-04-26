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
library(tidyquant)
library(arrow)



#### Download data ####
SPX <- tq_get('SPX',
               from = "2010-01-01",
               to = "2018-01-01",
               get = "stock.prices")

DJI <- tq_get('DJI',
                       from = "1991-07-12",
                       to = "1998-05-20",
                       get = "stock.prices")

NDX <- tq_get('NDX',
              from = "2023-10-01",
              to = "2024-05-17",
              get = "stock.prices")

raw_data_DJI <- DJI
raw_data_SPX <- SPX
raw_data_NDX <- NDX

#### Save data ####
# Because of the Date Class that needs to be preserved, the raw data is saved as a parquet file
write_parquet(raw_data_SPX, "data/raw_data/raw_data_SPX.parquet")
write_parquet(raw_data_DJI, "data/raw_data/raw_data_DJI.parquet")
write_parquet(raw_data_NDX, "data/raw_data/raw_data_NDX.parquet")
