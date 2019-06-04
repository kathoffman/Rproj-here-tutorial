# Investigating the here::here() function
library(here)

here() # returns your working directory

# this is the way Jenny Bryan recommends you find files with here()
here("Data","Raw") # returns a path to the Data/Raw folder of your working directory

# read in some data
dat <- read.csv(here("Data","Raw","cd4.csv"))
dat

# this way will also work and may be more intuitive at first
read.csv(here("Data/Raw/cd4.csv"))

# we can also do:
read.csv(here::here("Data","Raw","cd4.csv"))
# because here::here() conflicts with lubridate::here()

# save a plot into the Output folder with here::here()
pdf(file = here::here("Output","carplot2.pdf"))
plot(mtcars$cyl)
dev.off()
