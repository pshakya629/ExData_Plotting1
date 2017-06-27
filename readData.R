##################################################
## Project: Course 4 - Week 1 - Assignment 1
## Script purpose: Reads the data file. Creates data and dt variables. 
##                 This file Will be sourced into plot#.R files. 
##                 TODO: Implement cache
## Date: 06/27/2017
## Author: Prabin Shakya
##################################################

# Read the data file in data folder under working directory
data<-read.csv("data\\household_power_consumption.txt"
               ,header = FALSE
               ,skip=1
               ,sep = ";"
               ,na.strings = "?"
               ,colClasses = "character"
               ,col.names = c("Date"
                              ,"Time"
                              ,"Global_active_power"
                              ,"Global_reactive_power"
                              ,"Voltage"
                              ,"Global_intensity"
                              ,"Sub_metering_1"
                              ,"Sub_metering_2"
                              ,"Sub_metering_3")
               )

# Convert to date format
data[,"Date"]<-as.Date(data[,"Date"],"%d/%m/%Y")

# Subsetting for date range
data<-data[data$Date>="2007-02-01" & data$Date<="2007-02-02",]

# Convert columns to Numeric
data[,"Global_active_power"]<-as.numeric(data[,"Global_active_power"])
data[,"Global_reactive_power"]<-as.numeric(data[,"Global_reactive_power"])
data[,"Voltage"]<-as.numeric(data[,"Voltage"])
data[,"Sub_metering_1"]<-as.numeric(data[,"Sub_metering_1"])
data[,"Sub_metering_2"]<-as.numeric(data[,"Sub_metering_2"])
data[,"Sub_metering_3"]<-as.numeric(data[,"Sub_metering_3"])

# Create Date Time variable for plotting
dt<-strptime(paste(as.character(data$Date),data$Time,sep=" "),"%Y-%m-%d %H:%M:%S")



