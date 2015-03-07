power <- read.table("just_two_days.txt", sep = ";", header = TRUE, na.strings = "?")

power$Datetime <- strptime( paste(power$Date, power$Time, sep=" "),
                            "%d/%m/%Y %H:%M:%S")

png(file="plot3.png", width=480, height=480)
plot(power$Datetime, power$Sub_metering_1,
     ylab="Energy sub metering", xlab="", type="n")

lines(power$Datetime, power$Sub_metering_1, col="black")
lines(power$Datetime, power$Sub_metering_2, col="red")
lines(power$Datetime, power$Sub_metering_3, col="blue")

legend("topright",
legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
lty=c(1,1,1), # gives the legend appropriate symbols (lines)
col=c("black", "red", "blue")) # gives the legend lines the correct color and width
dev.off()