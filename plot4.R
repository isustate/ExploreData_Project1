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

# Multiple Plots
png(file = "plot4.png", width = 480, height = 480, units="px")
par(mfrow = c(2,2))
yrange<-range(c(graphdata$Sub_metering_1,graphdata$Sub_metering_2,graphdata$Sub_metering_3))

with(graphdata, {
  plot(DateTime, Global_active_power, type = "l", xlab ="", ylab = "Global Active Power")
  plot(DateTime, Voltage , type = "l", ylab = "Voltage", xlab = "datetime")
  plot(DateTime, Sub_metering_1, type = "l", ylim = yrange, ylab = "Energy sub metering",xlab="")
  legend("topright", bty = "n", lty = "solid", col = c("black","red","blue"), legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
  lines(DateTime, Sub_metering_2, type = "l", col="red")
  lines(DateTime, Sub_metering_3, type = "l", col="blue")
  plot(DateTime, Global_reactive_power, type = "l", ylab = "Global_reactive_power",xlab = "datetime")
  
})
dev.off()



