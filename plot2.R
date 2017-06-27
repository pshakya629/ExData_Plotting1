##################################################
## Project: Course 4 - Week 1 - Assignment 1
## Script purpose: Draw Plot 2
## Date: 06/27/2017
## Author: Prabin Shakya
##################################################

# Loading data
source("readData.R")

# Initialize png device
png("plot2.png",width=480,height=480)

# Draw plot
plot(dt,data$Global_active_power,type = "l",xlab = "",ylab = "Global Active Power (kilowatts)")

# Close png device
dev.off()
