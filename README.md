# The Impact of Boycotting on Stock Prices of North American Corporations Since 1980

## Overview

This repo provides analysis of the impact of boycotting since 1980 on stock prices of North American Corporations. The analysis reveals the importance of boycotting and which boycott motivations have the most impact. There is a focus on stock price fluctuations between a year before boycotting began and a year after it ended.

## Obtaining Raw Data

Raw data can be downloaded from Yahoo finance's historical data. Before downloading, filter by:

-   Time Period:

    -   Coca-Cola Company (KO): 2002-06-01 to 2024-03-01

-   Show:

    -   Historical Prices

-   Frequency:

    -   Monthly

## File Structure

The repo is structured as:

-   `data/raw_data` contains the raw data as Yahoo finance.
-   `data/analysis_data` contains the cleaned dataset that was constructed.
-   `model` contains fitted models.
-   `other` contains relevant literature and sketches.
-   `paper` contains the files used to generate the paper, including the Quarto document and reference bibliography file, as well as the PDF of the paper.
-   `scripts` contains the R scripts used to simulate, download and clean data.

## Statement on LLM usage

LLMs were not used in the research, replication, or writing of this paper.
