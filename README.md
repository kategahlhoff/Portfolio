# My Portfolio

## Author

Kate Gahlhoff

# Longitudinal Whale Issue Attention Cycle

## Description

This project explores longitudinal patterns in the issue attention cycle (IAC) for North Atlantic right whales, Rice's whales, and gray whales. The data used here are preliminary annual publication counts from an ongoing larger media analysis and are used to practice data cleaning, transformation, and visualization in R.

## Repository Structure

The repository contains three main folders:

- `data`
  - `data/raw/long_iac_prelim.csv` contains the original preliminary annual publication count data.
  - `data/processed/tidy_publication_counts.rds` contains the cleaned publication count data.
- `scripts`
  - `scripts/01_processing/data_processing.R` reads, cleans, and transforms the raw data and exports the processed dataset.
  - `scripts/03_content/exploratory_data_visualization.R` reads the processed data and creates exploratory figures.
- `results`
  - Contains three exported figures created from the processed data.

## About the Data

### `data/processed/tidy_publication_counts.rds`

The processed dataset contains annual publication counts for three whale species:

- `year` - Numeric - Year of publication
- `species` - Character - Whale species represented in the publication count
- `publication_count` - Numeric - Number of publications recorded for that species and year

## Results

- `results/img/first_plot.png` - Annual publication trends by whale species.
- `results/img/second_plot.png` - Total publications across all years by species.
- `results/img/third_plot.png` - Annual publication counts by species.

## Data Source

The preliminary data were compiled as part of an ongoing longitudinal issue attention cycle project conducted with Dr. Marcus Reamer. The dataset builds on previous IAC studies completed by Dr. Reamer and contains annual publication counts for North Atlantic right whales, Rice's whales, and gray whales. The data used here represent a preliminary portion of the larger project dataset.
