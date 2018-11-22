png(file = "plot2.png",width=480,height=480)
sampleData = mutate(sampleData,Date_Time=paste(Date,Time))
sampleData$Date_Time = sampleData$Date_Time %>% as.POSIXlt(format="%d/%m/%Y %H:%M:%S",tz="UTC")
with(sampleData,
     plot(Date_Time,Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)")
)
dev.off()