# Contains code for downloading and extracting the data
source('download_data_helpers.R')

downloadFile()
data <- subsetData()

date.format <-  "%d/%m/%Y %H:%M:%S"
date.time   <- strptime(paste(data$Date, data$Time), format)

png(file="plot3.png", width=480, height=480)

# Plot the graph
plot(date.time, data$Sub_metering_1, type = "l", col = "black", ylab = "Energy sub metering", xlab = "")
lines(date.time, data$Sub_metering_2, type = "l", col = "red")
lines(date.time, data$Sub_metering_3, type = "l", col = "blue")
legend("topright", lty =1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.off()