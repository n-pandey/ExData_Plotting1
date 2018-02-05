
# Plot Graph 2
  
with(CleanData, plot(x = Date_Time, y = Global_active_power, type = "l",ylab = "Global Active Power (kilowatts)",xlab = NA))

# Copy to png file

dev.copy(png, "plot2.png", bg = "transparent", width = 480, height = 480 )
dev.off()