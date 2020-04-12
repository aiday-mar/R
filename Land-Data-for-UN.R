land_data <- read.csv("C:/Users/aiday/Downloads/SYB62_145_201904_Land.csv", header=TRUE, sep=",", as.is=TRUE)[,c("Region", "Year", "Series", "Value")]
brazil_forest_cover <- subset(land_data, Series=="Forest cover (% of total land area)" & Region=="Brazil", c("Value"))
switzerland_forest_cover <- subset(land_data, Series=="Forest cover (% of total land area)" & Region=="Switzerland", c("Value"))
norway_forest_cover <- subset(land_data, Series=="Forest cover (% of total land area)" & Region=="Norway", c("Value"))
years <- c(2005, 2010, 2016)
plot(years, brazil_forest_cover[,1],"o",col="red", xlab="The year", ylab="Percentage forest cover", lty=1)

points(years, switzerland_forest_cover[,1], col="green")
lines(years, switzerland_forest_cover[,1], col="green",lty=2)

points(years, norway_forest_cover[,1], col="blue")
lines(years, norway_forest_cover[,1], col="blue", lty=3)

legend(1,19,legend=c("Brazil","Switzerland","Norway"), col=c("red","green","blue"),pch=c("o","o","o"),lty=c(1,2,3), ncol=1)