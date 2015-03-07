

power <- read.table("just_two_days.txt", sep = ";", header = TRUE, na.strings = "?")

hist(power$Global_active_power,
     col="red",
     main= "Global Active Power",
     xlab="Global Active Power (kilowatts)")
