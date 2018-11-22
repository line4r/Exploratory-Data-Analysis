source(file.path("file_read.R"))
png(file = "plot1.png",width=480,height=480)
hist(sampleData$Global_active_power,main="Global Active Power",
     xlab="Global Active Power (kilowatts)",col="red")
dev.off()