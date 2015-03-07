power <- read.table("just_two_days.txt", sep = ";", header = TRUE, na.strings = "?")

power$Datetime <- strptime( paste(power$Date, power$Time, sep=" "),
                            "%d/%m/%Y %H:%M:%S")
