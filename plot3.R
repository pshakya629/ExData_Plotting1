##################################################
## Project: Course 4 - Week 1 - Assignment 1
## Script purpose: Draw Plot 3
## Date: 06/27/2017
## Author: Prabin Shakya
##################################################

# Loading data
source("readData.R")

# Initialize png device
png("plot3.png",width=480,height=480)

# Draw plot
plot(dt,data$Sub_metering_1,type = "l",xlab = "",ylab = "Energy sub metering")
lines(dt,data$Sub_metering_2, col="Red")
lines(dt,data$Sub_metering_3, col="Blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col = c("Black","Red","Blue"),lty = 1)

# Close png device
dev.off()
