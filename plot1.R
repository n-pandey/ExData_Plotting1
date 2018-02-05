# Read Data into r

RawData <- read.table("household_power_consumption.txt", sep = ";", header = TRUE, na.strings = "?")

# Convert text in date time format and add a column

RawData$Date_Time <- as.POSIXct(strptime(paste(RawData$Date, RawData$Time), format = "%d/%m/%Y %H:%M:%S"))

# Cleaning the dataset

CleanData <- filter(RawData, Date_Time >= "2007-02-01 00:00:00" & Date_Time <="2007-02-02 23:59:59")

# Plot Graph

hist(CleanData$Global_active_power, xlab = "Global Active Power (kilowatts)", col = "red", main = "Global Active Power")

# Copy to png file

dev.copy(png, "plot1.png", bg = "transparent", width = 480, height = 480 )

dev.off()