
# Read in the data set:
power <- read.table("just_two_days.txt", sep = ";", header = TRUE, na.strings = "?")

# Combine the date and time into a single string and parse it into
# an object representing both date and time:
power$Datetime <- strptime( paste(power$Date, power$Time, sep=" "),
                            "%d/%m/%Y %H:%M:%S")

# Output to a png file:
png(file="plot2.png", width=480, height=480)

# Plot Global_active_power column vs. datetime, with the points
# turned off, and then plot the lines separately
plot(power$Datetime, power$Global_active_power,
     ylab="Global Active Power (kilowatts)", xlab="", type="n")
lines(power$Datetime, power$Global_active_power)
dev.off()