downloadFile <- function() {
  # Download the file and unzip into the directory if it does not already exist
  if (!file.exists("household_power_consumption.txt")) {
    cat("Data does not exist locally. Downloading")
    file.url  <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
    cat("Downloading File")
    download.file(file.url, destfile = "zipped_data.zip", method = "curl")
    unzip("zipped_data.zip")
    file.remove("zipped_data.zip")
  } else {
    cat("Data exists. Using local copy")
  }
}

subsetData <- function() {
  data <- read.table("household_power_consumption.txt", header = TRUE, sep=";", na.strings = "?")
  subset(data, data$Date == "2/2/2007" | data$Date == "1/2/2007")
}