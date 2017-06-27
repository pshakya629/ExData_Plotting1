##################################################
## Project: Course 4 - Week 1 - Assignment 1
## Script purpose: Draw Plot 4
## Date: 06/27/2017
## Author: Prabin Shakya
##################################################

# Loading data
source("readData.R")

# Initialize png device
png("plot4.png",width=480,height=480)

# Defile plot type
par(mfrow = c(2,2))

# Draw 1st plot
plot(dt,data$Global_active_power,type = "l",xlab = "",ylab = "Global Active Power")

# Draw 2nd Plot
plot(dt,data$Voltage,type = "l",ylab = "Voltage",xlab="datetime")

# Draw 3rd Plot
plot(dt,data$Sub_metering_1,type = "l",xlab = "",ylab = "Energy sub metering")
lines(dt,data$Sub_metering_2, col="Red")
lines(dt,data$Sub_metering_3, col="Blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col = c("Black","Red","Blue"),lty = 1,bty = "n")

# Draw 4th Plot
plot(dt,data$Global_reactive_power,type = "l",xlab = "datetime",ylab = "Global Reactive Power")

# Close png device
dev.off()





