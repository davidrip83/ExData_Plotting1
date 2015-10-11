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

# Create first plot
png(file = "plot1.png", width = 480, height = 480)
hist(electric_subset$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = "red")
dev.off()
