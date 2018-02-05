# Plot Graph 4
# Defining the plot and saving to png file

  png("plot4.png",  width = 480, height = 480, units = "px")

  # defining the graph plots
  
  par(mfcol = c(2,2))
  
  
  # Plot Graph 1
   with(CleanData, plot(x = Date_Time, y = Global_active_power, type = "l",ylab = "Global Active Power (kilowatts)",xlab = NA))
  
  # Plot Graph 2
    
  # Sub_metering_1
  
   plot(CleanData$Date_Time, CleanData$Sub_metering_1, type = 'l', xlab = NA, ylab = "Energy sub metering")
  
  # Sub_metering_2
  
   lines(CleanData$Date_Time, CleanData$Sub_metering_2, col = "red")
   
  # Sub_metering_3
  
   lines(CleanData$Date_Time, CleanData$Sub_metering_3, col = "blue")
  
  # adding legend
  
   legend(x="topright", legend =  c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1, col = c("black", "red", "blue"), bty = 'n')
  
  # Plot Graph 3
   
   with(CleanData, plot(x = Date_Time, y = Voltage,  type = "l", ylab = "Voltage", xlab = "datetime"))
   
   with(CleanData, plot(x = Date_Time, y = Global_reactive_power,  type = "l", ylab = "Global_reactive_power", xlab = "datetime"))
  
  # closing the device 
   
  dev.off()
  
