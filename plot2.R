# Contains code for downloading and extracting the data
source('download_data_helpers.R')

downloadFile()
data <- subsetData()

date.format <-  "%d/%m/%Y %H:%M:%S"
date.time   <- strptime(paste(data$Date, data$Time), format)

png(file="plot2.png", width=480, height=480)

#Plot the graph
plot(date.time, data$Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")

dev.off()