# Start
# Hello R
print("Hello R!")

#print integer
print(2)

#print float value
print(0.2)
print(0.0002)

#Simple Arithmatic
2 + 2
2 * 3
2*0.3
2/3
1/0

#Directory
getwd()
setwd("/Users/rpt/Documents")
getwd()
setwd("C:/Users/rpt/Downloads")
getwd()

# Read USDA.csv file from current directory
USDA = read.csv("USDA.csv")


# Exlore the data
# name of the variables in the data USDA
names(USDA)

# See the variable names and types, total number of samples in the dataset
str(USDA)

# Explore the data statistically
summary(USDA)

# What is NA
# Access Particular Variable

USDA$Iron

str(USDA$Iron)

length(USDA$Iron)




summary(USDA$Iron)

# Exclude the NA value

mean(USDA$Iron)


mean(USDA$Iron, na.rm = TRUE)


median(USDA$Iron)
median(USDA$Iron, na.rm = TRUE)
quantile(USDA$Iron, na.rm = TRUE)
min(USDA$Iron, na.rm =TRUE)
max(USDA$Iron, na.rm = TRUE)

#Find the Index
which.min(USDA$Iron)
USDA$Description[3]
USDA$Cholesterol[3]
USDA$Cholesterol[which.min(USDA$Iron)]

summary(USDA$Iron)
which.max(USDA$Iron)
USDA$Iron[which.max(USDA$Iron)]
USDA$Description[260]
USDA$Cholesterol[260]


# Make a new Frame, As per requirement 
# For Example make a data frame which contains CHOLESTEROL more than 200
HighCholesterol  = subset(USDA,Cholesterol > 200)

# Check How many samples in the new data frame
nrow(HighCholesterol)

# Now HighSodium Work as a independent Data frame
# Description in the HighSodium 
HighCholesterol$Description

str(HighCholesterol)
summary(HighCholesterol)


# Match Particular Keey Word in Data frame variable
match("CAVIAR", USDA$Description)

# Cholesterol Level
USDA$Cholesterol[4154]

USDA$Cholesterol[match("CAVIAR", USDA$Description)]

# create new data frame and save into variables
summary(USDA)
Vitamin <- cbind(USDA$VitaminC, USDA$VitaminD, USDA$VitaminE)
write.csv(Vitamin, file = "USDA-Vitamin.csv")

