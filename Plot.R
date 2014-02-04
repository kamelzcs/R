library(zoo)
require(ggplot2)
require(reshape)
test <- read.csv("~/Data/labola/Monthly meeting/test.csv", sep=",", header = TRUE, stringsAsFactors = FALSE)
#f <- function(x) as.yearmon(format(x, nsmall = 2), "%m/%y")
#test <- read.zoo("~/Data/labola/Monthly meeting/test.csv", header = TRUE, sep=",", format = "%Y-%m-%d")
#f <- function(x) as.yearmon(format(x, nsmall = 2), "%m")
#test <- read.zoo("~/Data/labola/Monthly meeting/test.csv",  header = TRUE, sep=",")
#p <- autoplot(test, facet = NULL)
#p
attach(test)
d <- data.frame(Month = Month, last_year= last_year, this_year = this_year )
d <- melt(d ,  id = 'Month', variable_name = 'Year')
ggplot(d, aes(Month, value)) + geom_line(aes(colour = Year))+scale_x_continuous(breaks=c(1:12))


