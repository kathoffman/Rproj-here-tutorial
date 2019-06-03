# An example of how you can write functions
# (or data wrangling code, plotting code, etc.)
# and source it in both your analysis and Rmd file
# without here::here() these would not be able to be run separately
# because the .R scripts would have different home/root directories
# than your .Rmd file

make_scatterplot <- function(dat, x, y){
  return(plot(dat[,x], dat[,y],
              xlab=x, ylab=y))
}

make_scatterplot(mtcars, "mpg", "cyl")

