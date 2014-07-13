##  Coursera Exploratory Data Analysis Project 1, Plot 4

## Read the power consumption table
HWdata <- read.table("household_power_consumption.txt", header=TRUE, sep = ";")
## Create tables for 1/2/2007 and 2/2/2007
HWdataSub1 <- HWdata[HWdata$Date == "1/2/2007",]
HWdataSub2 <- HWdata[HWdata$Date == "2/2/2007",]
## Combine the two subsets into a single dataframe
## This is the dataframe that contains data to be plotted
HWdataSub <- rbind(HWdataSub1, HWdataSub2)

## create png file and save histogram to that file:
png(file = "plot4.png")
## default is 480 pixels by 480 pixels
par(mfrow=c(2,2))
hist(as.numeric(HWdataSub$Global_active_power), main = "Global Active Power",
     xlab="Global Active Power (kilowatts)", 
     ylab = "Frequency", col="red")

plot(as.numeric(HWdataSub$Voltage), ylab = "Voltage", type = "l")

with(HWdataSub, plot(as.numeric(Sub_metering_1), type = "l", ylab = "Energy sub metering"))
with(HWdataSub, lines(as.numeric(Sub_metering_2), type = "l", col = "red"))
with(HWdataSub, lines(as.numeric(Sub_metering_3), type = "l", col = "blue"))
legend("topright", pch="l", col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

plot(as.numeric(HWdataSub$Global_reactive_power), ylab = "Global_reactive_power", type = "l")

dev.off()
