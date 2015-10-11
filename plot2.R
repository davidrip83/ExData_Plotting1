# Read data in R
# Note that data is separated by ;
setwd("~/Documents/rclass/exploratory_data/courseproject1")
electric <- read.table("household_power_consumption.txt", sep = ";", header = TRUE,na.strings ="?")

# convert date 
electric$Date <- as.Date(electric$Date,"%d/%m/%Y")

# convert time
electric$datetime <- paste(electric$Date, electric$Time)
electric$Time <- strptime(electric$datetime, format = "%Y-%m-%d %H:%M:%S") 

# Subset data to the dates 2007-02-01 and 2007-02-02
date1 <- as.Date("2007-02-01")
date2 <- as.Date("2007-02-02")
electric_subset <- subset(electric, Date >= date1 & Date <= date2)

# Create second plot
png(file = "plot2.png", width = 480, height = 480)
plot(electric_subset$Time, electric_subset$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()

