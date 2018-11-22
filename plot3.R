png(file = "plot3.png",width=480,height=480)
with(sampleData,plot(Date_Time,Sub_metering_1,type="l"))
with(sampleData,lines(Date_Time,Sub_metering_2,col="red"))
with(sampleData,lines(Date_Time,Sub_metering_3,col="blue"))
legend("topright",cex=0.7,col=c("black","blue","red"),
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1)
dev.off()