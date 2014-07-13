##  Coursera Exploratory Data Analysis Project 1, Plot 3

## Read the power consumption table
HWdata <- read.table("household_power_consumption.txt", header=TRUE, sep = ";")
## Create tables for 1/2/2007 and 2/2/2007
HWdataSub1 <- HWdata[HWdata$Date == "1/2/2007",]
HWdataSub2 <- HWdata[HWdata$Date == "2/2/2007",]
## Combine the two subsets into a single dataframe
## This is the dataframe that contains data to be plotted
HWdataSub <- rbind(HWdataSub1, HWdataSub2)


## create png file and save plot to that file:
png(file = "plot3.png")
## default is 480 pixels by 480 pixels
with(HWdataSub, plot(as.numeric(Sub_metering_1), type = "l", ylab = "Energy sub metering"))
with(HWdataSub, lines(as.numeric(Sub_metering_2), type = "l", col = "red"))
with(HWdataSub, lines(as.numeric(Sub_metering_3), type = "l", col = "blue"))
legend("topright", pch="l", col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()
