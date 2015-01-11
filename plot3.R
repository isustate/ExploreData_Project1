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

# Sub Metering Line Plot
par(mfrow = c(1,1))
png(file = "plot3.png", width = 480, height = 480, units="px")
yrange<-range(c(graphdata$Sub_metering_1,graphdata$Sub_metering_2,graphdata$Sub_metering_3))
plot(graphdata$DateTime, graphdata$Sub_metering_1, type = "l", ylim = yrange, xlab ="", ylab = "Energy sub metering")
lines(graphdata$DateTime, graphdata$Sub_metering_2, type = "l", ylim = yrange, col="red")
lines(graphdata$DateTime, graphdata$Sub_metering_3, type = "l", ylim = yrange, col="blue")
legend("topright", lty = "solid", col = c("black","red","blue"), legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()

