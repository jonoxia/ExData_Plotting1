

power <- read.table("just_two_days.txt", sep = ";", header = TRUE, na.strings = "?")

power$Datetime <- strptime( paste(power$Date, power$Time, sep=" "),
                            "%d/%m/%Y %H:%M:%S")

plot(power$Datetime, power$Global_active_power,
     ylab="Global Active Power (kilowatts)", xlab="", type="n")
lines(power$Datetime, power$Global_active_power)
