
# Read in the data set:
power <- read.table("just_two_days.txt", sep = ";", header = TRUE, na.strings = "?")

# Output to a png file:
png(file="plot1.png", width=480, height=480)

# Make a histogram of the Global_active_power column, with red bars:
hist(power$Global_active_power,
     col="red",
     main="Global Active Power",
     xlab="Global Active Power (kilowatts)")
dev.off()