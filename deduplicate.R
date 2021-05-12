# Title     : De-duplicate data exports.
library(tidyverse)
library(reshape2)
library(ggplot2)

data_directory <- paste0(getwd(), '/data/')
creative_work <- read.csv2(
  file = paste0(data_directory, 'work.csv'),
  header = TRUE,
  sep = ",",
  quote = "\"",
  dec = ".",
  encoding = "utf8",
)

creative_work_large_export <- read.csv2(
  file = paste0(data_directory, 'work_large_export.csv'),
  header = TRUE,
  sep = ",",
  quote = "\"",
  dec = ".",
  encoding = "utf8",
)

plot <- ggplot(
  creative_work,
  aes(x = Sentiment, y = Topic)
) +
  geom_point(aes(colour = Country, shape = Title))
