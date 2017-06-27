##################################################
## Project: Course 4 - Week 1 - Assignment 1
## Script purpose: Draw Plot 1
## Date: 06/27/2017
## Author: Prabin Shakya
##################################################

# Loading data
source("readData.R")

# Initialize png device
png("plot1.png",width=480,height=480)

# Draw Plot
hist(data$Global_active_power,col = "Red",xlab = "Global Active Power (kilowatts)",main = "Global Active Power")

# Close png device
dev.off()
