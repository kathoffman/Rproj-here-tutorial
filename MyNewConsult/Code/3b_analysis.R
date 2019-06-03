# An example analysis that we want to work on
# and eventually report some results from

library(tidyverse)
library(here)

# load the functions we've made for this project
source(here("Code","3a_functions.R"))

# read in a melanoma data set from our Data/Derived folder
melanoma <- read.csv(here("Data","Derived","melanoma.csv"))

# use our previously made function to make a scatterplot
make_scatterplot(melanoma, "age", "thickness")

# make a frequency table
melanoma %>% group_by(status) %>% summarise(count = n()) -> counts

