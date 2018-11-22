png(file = "plot4.png",width=480,height=480)
par(mfrow=c(2,2),mar=c(4,4,2,1),oma=c(0,0,2,0))
with(sampleData,{
    plot(Date_Time,Global_active_power,type="l",xlab="",ylab="Global Active Power")
    plot(Date_Time,Voltage,type="l",xlab="datetime")
    plot(Date_Time,Sub_metering_1,type="l",xlab="",ylab="Energy sub metering")
    lines(Date_Time,Sub_metering_2,col="red")
    lines(Date_Time,Sub_metering_3,col="blue")
    legend("topright",col=c("black","blue","red"),
           legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,bty="n"
    )
    plot(Date_Time,Global_reactive_power,type="l",xlab="datetime")
}
)
dev.off()
