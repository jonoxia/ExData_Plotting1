
# Read in the data set:
power <- read.table("just_two_days.txt", sep = ";", header = TRUE, na.strings = "?")

# Combine the date and time into a single string and parse it into
# an object representing both date and time:
power$datetime <- strptime( paste(power$Date, power$Time, sep=" "),
                            "%d/%m/%Y %H:%M:%S")

# Output to a png file:
png(file="plot4.png", width=480, height=480)

# Create a two x two matrix of plots, all from the same data frame:
par(mfcol = c(2, 2))
with(power, {

    plot(datetime, Global_active_power, type="n", xlab="", ylab="Global Active Power")
    lines(datetime, Global_active_power)

    plot(datetime, Sub_metering_1, type="n", xlab="", ylab="Energy sub metering")
    lines(datetime, Sub_metering_1, col="black")
    lines(datetime, Sub_metering_2, col="red")
    lines(datetime, Sub_metering_3, col="blue")
    legend("topright",
           legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
           lty=c(1,1,1),
           col=c("black", "red", "blue")
    )


    plot(datetime, Voltage, type="n")
    lines(datetime, Voltage)

    plot(datetime, Global_reactive_power, type="n")
    lines(datetime, Global_reactive_power)
})
dev.off()