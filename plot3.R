
# Read in the data set:
power <- read.table("just_two_days.txt", sep = ";", header = TRUE, na.strings = "?")

# Combine the date and time into a single string and parse it into
# an object representing both date and time:
power$Datetime <- strptime( paste(power$Date, power$Time, sep=" "),
                            "%d/%m/%Y %H:%M:%S")


# Output to a png file:
png(file="plot3.png", width=480, height=480)

# Plot Global_active_power column vs. datetime, with the points
# turned off, and then plot the lines separately
plot(power$Datetime, power$Sub_metering_1,
     ylab="Energy sub metering", xlab="", type="n")

# Plot three sets of lines in different colors for the three
# sub_metering columns
lines(power$Datetime, power$Sub_metering_1, col="black")
lines(power$Datetime, power$Sub_metering_2, col="red")
lines(power$Datetime, power$Sub_metering_3, col="blue")

# Add a legend explaining what the line colors mean:
legend("topright",
legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
lty=c(1,1,1), # gives the legend appropriate symbols (lines)
col=c("black", "red", "blue")) # gives the legend lines the correct color and width
dev.off()