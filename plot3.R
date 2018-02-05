# Plot Graph 3

# Defining the plot and saving to png file

png("plot3.png",  width = 480, height = 480, units = "px")

# Sub_metering_1

plot(CleanData$Date_Time, CleanData$Sub_metering_1, type = 'l', xlab = NA, ylab = "Energy sub metering")

# Sub_metering_2

lines(CleanData$Date_Time, CleanData$Sub_metering_2, col = "red")

# Sub_metering_3

lines(CleanData$Date_Time, CleanData$Sub_metering_3, col = "blue")

# adding legend

legend(x="topright", legend =  c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1, col = c("black", "red", "blue"))

# closing the device 

dev.off()