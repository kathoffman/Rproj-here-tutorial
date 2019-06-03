# Investigating the here::here() function
library(here)

# this is the way Jenny Bryan recommends you find files with here()
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
