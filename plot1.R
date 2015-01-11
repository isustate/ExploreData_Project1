library(datasets)

filepath <- c("household_power_consumption.txt")
powerdata <- read.table(filepath, header = TRUE, sep=";", as.is = TRUE)
powerdata$DateTime <- as.POSIXct(paste(powerdata$Date, powerdata$Time), format="%d/%m/%Y %H:%M:%S") 

graphdata <- subset(powerdata, powerdata$Date == "1/2/2007" | powerdata$Date == "2/2/2007")
graphdata$Global_active_power <- as.numeric(graphdata$Global_active_power)
graphdata$Global_reactive_power <- as.numeric(graphdata$Global_reactive_power)
graphdata$Sub_metering_1 <- as.numeric(graphdata$Sub_metering_1)
graphdata$Sub_metering_2 <- as.numeric(graphdata$Sub_metering_2)
graphdata$Sub_metering_3 <- as.numeric(graphdata$Sub_metering_3)
graphdata$Voltage <- as.numeric(graphdata$Voltage)

# Histogram Plot
png(file = "plot1.png", width = 480, height = 480, units="px")
hist(graphdata$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = "red")
dev.off()