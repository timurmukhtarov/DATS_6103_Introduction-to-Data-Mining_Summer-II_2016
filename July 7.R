# Set Directory
setwd("C:/Users/rpt/Downloads")
getwd()

# Read USDA.csv file from current directory
USDA = read.csv("USDA.csv")

# Plot the Graph
plot(USDA$Cholesterol)
plot(USDA$Cholesterol, col = "blue")
plot(USDA$Cholesterol, col = "red")
plot(USDA$Cholesterol, type = "o", col = "blue", xlim= c(0,10))
plot(USDA$Cholesterol, type = "o", col = "blue", ylim = c(0,500))
plot(USDA$Cholesterol, type = "o", col = "blue", ylim = c(0,500), xlim = c(0,10))
plot(USDA$Cholesterol, type = "o", col = "blue", ylim = c(0,500), xlim = c(0,10),xlab = "INDEX", ylab = "Cholesterol Level")
title(main = "Cholesterol in Unit", "col.main" = "red", font.main = 10, sub = "G24708667")

png('Rushik Thumar_USDA_Cholesterol.png')
plot(USDA$Cholesterol, type = "o", col = "blue", ylim = c(0,500), xlim = c(0,10),xlab = "INDEX", ylab = "Cholesterol Level")
title(main = "Cholesterol in Unit", "col.main" = "red", font.main = 10, , sub = "G24708667")
dev.off()

plot.new()
frame()
# Draw Two plot
plot(USDA$Cholesterol, type = "o", col = "blue", ylim = c(0,2000), xlim = c(0,10),xlab = "INDEX", ylab = "Level in Nutritions")
# Graph Sodium with red line
lines(USDA$Sodium, type = "o", col = "red", pch = 00)
title(main = "Cholesterol and Sodium in Unit", "col.main" = "red", font.main = 10, , sub = "G24708667")
legend(0.5,2000,c("Cholesterol", "Sodium"), col = c("blue","red"),pch = 00:00, lty = 1:1);


plot.new()
frame()
x <- c(2,3,5,2,1)
#Bar Plot

barplot(x)

# Histrogram Plot
hist(x)
y <- c(2,2,4,2,4)
xy <-cbind(x,y)
barplot(xy)
hist(xy)


#Bar Plot
plot.new()
frame()
barplot(USDA$Cholesterol)
barplot(USDA$Cholesterol, xlim = c(0,10))
barplot(USDA$Cholesterol,xlim = c(0,3),density=c(10), main="Cholesterol", xlab="Index", ylab="Cholesterol in Units ", border="blue")


#Histrogram
plot.new()
frame()
hist(USDA$Cholesterol)
hist(USDA$Cholesterol, col = "lightblue",ylim = c(0,100))


#How to create a function
myfunction <- function(x){
	y = x * x
	return(y)
}

# For run it myfunction(2)

# Where is the missing value
is.na(USDA$Cholesterol)

# Omit the missing value
newUSDA <- na.omit(USDA)

# Replace missing value by Zero
USDA[is.na(USDA)] <-0
summary(USDA)
USDA = read.csv("USDA.csv")

# Replace missing value in Cholesterol value is replaced by Mean of the variable
USDA$Cholesterol[is.na(USDA$Cholesterol)] <- mean(USDA$Cholesterol)

#####################################################################################

# Financial Data Analysis

library(quantmod)
# Get Stocks of the APPLE stock
getSymbols("AAPL")

dim(AAPL)
head(AAPL)
tail(AAPL)
summary(AAPL)
chartSeries(AAPL[,6])

# Save the Plot
png('Rushik Thumar_Apple_Closing.png')
chartSeries(AAPL[,6])
dev.off()
# Get Apple Stock value for 2016 year

getSymbols("AAPL", from = "2016-06-25", to = "2016-07-01")
dim(AAPL)
head(AAPL)
tail(AAPL)
chartSeries(AAPL)
chartSeries(to.weekly(AAPL),up.col='white',dn.col='red')
chartSeries(to.monthly(AAPL),up.col='white',dn.col='red')
chartSeries(to.daily(AAPL),up.col='white',dn.col='red')


# Save the Apple Stock Data in CSV
d = as.data.frame(AAPL)
d = cbind(Date = rownames(d),d)
write.csv(d, file = "Trial1.csv", row.names = F)



# Read CSV file as a data frame
APPLE2016 = read.csv("Trial1.csv")
str(APPLE2016)
summary(APPLE2016)

# Plot the Same data using normal functions
plot(APPLE2016$AAPL.Low)
lines(APPLE2016$AAPL.High)
plot(APPLE2016$Date,APPLE2016$AAPL.Low)
dim(APPLE2016)


# See the Frequancy of the Stock value
table(AAPL$AAPL.Open)

# Sort in Increasing Order
sort(table(AAPL$AAPL.Open))

# Get data about US dollar to EU Rate
getSymbols("DEXUSEU",src="FRED")
dim(DEXUSEU)
plot(DEXUSEU)

# Get Gold value
getSymbols("XAU/USD",src="Oanda")

#XAG- Silver
#XPD - Palladium
#XPT -Platinum

