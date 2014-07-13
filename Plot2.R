##  Coursera Exploratory Data Analysis Project 1, Plot 2

## Read the power consumption table
HWdata <- read.table("household_power_consumption.txt", header=TRUE, sep = ";")
## Create tables for 1/2/2007 and 2/2/2007
HWdataSub1 <- HWdata[HWdata$Date == "1/2/2007",]
HWdataSub2 <- HWdata[HWdata$Date == "2/2/2007",]
## Combine the two subsets into a single dataframe
## This is the dataframe that contains data to be plotted
HWdataSub <- rbind(HWdataSub1, HWdataSub2)

## create png file and save plot to that file:
png(file = "plot2.png")
## default is 480 pixels by 480 pixels
plot(as.numeric(HWdataSub$Global_active_power), ylab = "Global Active Power (kilowatts)", type = "l")
dev.off()
