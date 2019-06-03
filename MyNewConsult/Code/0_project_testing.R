# Testing out our new R Project

# this directory should match the one shown at the top of the RStudio window
# and where your R Project lives
getwd()

# load in mtcars data set and make a plot
data(mtcars)
plot(mtcars$mpg)

# this should save in the folder our R Project is in
pdf(file = "carplot.pdf")
plot(mtcars$mpg)
dev.off()

# this should save in the Output folder
pdf(file = "Output/carplot.pdf")
plot(mtcars$mpg)
dev.off()

