# The Impact of Boycotting on Stock Prices of Nike, SeaWorld, and Starbucks During the 1990s, 2010s, and 2020s, Respectively. 

## Overview

This repo provides analysis on the impact of boycotting on 3 large U.S. Companies - Nike, SeaWorld, and Starbucks - from 1991 to 2024. The analysis reveals the importance of media during boycotting to cause financial impacts and the various factors which were involved in the 3 cases in this analysis. 

## Obtaining Raw Data

Raw data can be downloaded from Yahoo Finance Canada's historical data. Each company is avilable at 
- Nike (NKE): https://ca.finance.yahoo.com/quote/NKE/history
- SeaWorld (PRKS): https://ca.finance.yahoo.com/quote/PRKS/history
- Starbucks (SBUX): https://ca.finance.yahoo.com/quote/SBUX/history

Before downloading the data, on the website filter by:

-   Time Period:
    -   Nike (NKE): 1991-07-12 to 1998-05-20
    -   SeaWorld (PRKS): 2013-07-12 to 2016-03-17
    -   Starbucks (SBUX): 2023-10-11 to 2024-03-29

-   Show:
    -   Historical Prices

-   Frequency:
    -   Daily

Then download each dataset. Rename each to raw_data_TICKER.csv, replacing "TICKER" with each company's ticker. Place the 3 csv files into boycott/data/raw_data. Nike should be in the file as `/raw_data/raw_data_NKE.csv`. The other datasets can be downlaoded by running `01-download_data.R`

## File Structure

The repo is structured as:

-   `data/raw_data` contains the raw data from Yahoo finance and downlaoded data from the library `tidyquant`.
-   `data/analysis_data` contains the cleaned datasets that were constructed.
-   `other` contains relevant sketches.
-   `paper` contains the files used to generate the paper, including the Quarto document and reference bibliography file, as well as the PDF of the paper.
-   `scripts` contains the R scripts used to simulate, download, test, and clean data.

## Statement on LLM usage

LLMs were not used in the research, replication, or writing of this paper.
