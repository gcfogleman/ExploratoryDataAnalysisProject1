##  Coursera Exploratory Data Analysis Project 1

## Read the power consumption table
HWdata <- read.table("household_power_consumption.txt", header=TRUE, sep = ";")
## Create tables for 1/2/2007 and 2/2/2007
HWdataSub1 <- HWdata[HWdata$Date == "1/2/2007",]
HWdataSub2 <- HWdataSub1 <- HWdata[HWdata$Date == "2/2/2007",]
## Combine the two subset into a single dataframe
HWdataSub <- rbind(HWdataSub1, HWdataSub2)
