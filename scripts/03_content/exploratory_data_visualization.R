#loading packages
library(EVR628tools)
library(tidyverse)

#reading in data
whale_data <- read_rds(file = "data/processed/tidy_publication_counts.rds")

#Creating first plot
first_plot <- ggplot(whale_data,
       aes(x = year, y = publication_count, color = species)) +
  geom_line() +
  geom_point() +
  labs( title = "Publications By Year",
    x = "Year",
    y = "Number of Publications",
    color = "Species",
    caption = "Total publications across all years, showing the overall amount of
attention each whale species received.
Source: Preliminary longitudinal IAC project data compiled with Dr. Marcus Reamer.") +
   scale_color_discrete(
    name = "Species",
    labels = c("Gray whale", "Rice's whale", "Right whale"))

first_plot
  
#Saving first plot
ggsave(plot = first_plot,
        filename = "results/img/first_plot.png",
        width = 6,
        height = 4)

#Creating second plot
species_totals <- whale_data |>
  group_by(species) |>
  summarize(total_publications = sum(publication_count))

second_plot <- ggplot(species_totals,
       aes(x = species, y = total_publications, fill = species)) +
  geom_col() +
  labs( title = "Total Publications per Species",
    x = "Species",
    y = "Total Number of Publications",
    fill = "Species",
    caption = "Annual publication counts for three whale species over 15 years.
Source: Preliminary longitudinal IAC project data compiled with Dr. Marcus Reamer.") +
  scale_fill_discrete(
    name = "Species",
    labels = c("Gray whale", "Rice's whale", "Right whale"))

second_plot

#Saving second plot
ggsave(plot = second_plot,
        filename = "results/img/second_plot.png",
        width = 6,
        height = 4)


#Creating third plot
third_plot <- ggplot(whale_data,
       aes(x = year, y = publication_count, fill = species)) +
  geom_col() +
  labs(title = "Annual Distribution of Publications by Species",
    x = "Year",
    y = "Number of Publications",
    fill = "Species",
caption = "Annual publication counts by species, showing how attention to
each whale changed over time.
Source: Preliminary longitudinal IAC project data compiled with Dr. Marcus Reamer.")+
  scale_fill_discrete(name = "Species",
    labels = c("Gray whale", "Rice's whale", "Right whale"))

third_plot

#Saving third plot
ggsave(plot = third_plot,
        filename = "results/img/third_plot.png",
        width = 6,
        height = 4)
