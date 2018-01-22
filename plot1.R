setwd("C:/Users/mza0052/Desktop/Coursera/Exp_Ana")
hpctable <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?")
hpctable$Date <- as.Date(hpctable$Date, "%d/%m/%Y")
hpctable  <- hpctable [complete.cases(hpctable ),]
hpctable <- subset(hpctable,Date >= as.Date("2007-02-01") & Date <= as.Date("2007-02-02"))
hist(hpctable$Global_active_power, col="red", main="Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.copy(png,"plot1.png", width=480, height=480)
dev.off()