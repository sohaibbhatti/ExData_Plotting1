# Contains code for downloading and extracting the data
source('download_data_helpers.R')

downloadFile()
data <- subsetData()

png(file="plot1.png", width=480, height=480)

#Plot the graph
hist(data$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")

dev.off()