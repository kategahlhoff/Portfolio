#Script for cleaning data on annual publication counts for gray whales, 
# Rice's whales, and right whales between 2010 and 2025


#Loading packages
library(EVR628tools)
library(tidyverse)
library(janitor)


#reading in data and cleaning names

publication_counts <- read_csv(file="data/raw/long_iac_prelim.csv") |> 
  clean_names()

#checking names
colnames(publication_counts)


#Making data longer
tidy_publication_counts <- publication_counts |>
  select (-total) |> 
  pivot_longer(
    cols = c(right_whale, rices_whale, gray_whale),
    names_to = "species",
    values_to = "publication_count") 

tidy_publication_counts

#Saving processed data
write_rds(x=tidy_publication_counts,
          file="data/processed/tidy_publication_counts.rds")

  
