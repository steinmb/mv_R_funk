# Title     : De-duplicate data exports.
# library(tidyverse)

data_directory <- paste0(getwd(), '/data/')
creative_work <- read.csv2(
  file = paste0(data_directory, 'work.csv'),
  header = TRUE,
  sep = ",",
  quote = "\"",
  dec = ".",
  encoding = "utf8",
)

dim(creative_work)
str(creative_work)
summary(creative_work)
colnames(creative_work)
head(creative_work, n = 20)

duplicated(creative_work)