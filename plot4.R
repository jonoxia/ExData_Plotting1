power <- read.table("just_two_days.txt", sep = ";", header = TRUE, na.strings = "?")

power$datetime <- strptime( paste(power$Date, power$Time, sep=" "),
                            "%d/%m/%Y %H:%M:%S")

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