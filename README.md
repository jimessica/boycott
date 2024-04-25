# The Impact of Boycotting on Stock Prices of Nike, Chevron, and United Parks and Recreation from 1991 to 2024

## Overview

This repo provides analysis of the impact of boycotting since 1980 on stock prices of North American Corporations. The analysis reveals the importance of boycotting and which boycott motivations have the most impact. There is a focus on stock price fluctuations between a year before boycotting began and a year after it ended.

## Obtaining Raw Data

Raw data can be downloaded from Yahoo Finance Canada's historical data. Before downloading, filter by:

-   Time Period:

    -   Nike (NKE): 1991-07-12 to 1998-05-20
    -   United Parks & Recreation (PRKS): 2013-07-12 to 2016-03-17
    -   Starbucks (SBUX): 2023-10-11 to 2024-03-29

-   Show:

    -   Historical Prices

-   Frequency:

    -   Daily

## File Structure

The repo is structured as:

-   `data/raw_data` contains the raw data from Yahoo finance.
-   `data/analysis_data` contains the cleaned datasets that were constructed.
-   `other` contains relevant literature and sketches.
-   `paper` contains the files used to generate the paper, including the Quarto document and reference bibliography file, as well as the PDF of the paper.
-   `scripts` contains the R scripts used to simulate, download and clean data.

## Statement on LLM usage

LLMs were not used in the research, replication, or writing of this paper.
