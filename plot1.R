

power <- read.table("just_two_days.txt", sep = ";", header = TRUE, na.strings = "?")

png(file="plot1.png", width=480, height=480)
hist(power$Global_active_power,
     col="red",
     main= "Global Active Power",
     xlab="Global Active Power (kilowatts)")
dev.off()