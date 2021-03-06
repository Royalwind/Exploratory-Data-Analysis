par(mfrow=c(2,2))

##PLOT A
plot(Data1$timestamp,Data1$Global_active_power, type="l"
     , xlab="", ylab="Global Active Power")
##PLOT B
plot(Data1$timestamp,Data1$Voltage, type="l", xlab="datetime", ylab="Voltage")

##PLOT C
plot(Data1$timestamp,Data1$Sub_metering_1, type="l"
     , xlab="", ylab="Energy sub metering")
lines(Data1$timestamp,Data1$Sub_metering_2,col="red")
lines(Data1$timestamp,Data1$Sub_metering_3,col="blue")
legend("topright", col=c("black","red","blue")
       ,c("Sub_metering_1","Sub_metering_2 ", "Sub_metering_3")
       ,lty=c(1,1), bty="n", cex=.5) 
#PLOT D
plot(Data1$timestamp,Data1$Global_reactive_power, type="l"
     , xlab="datetime", ylab="Global_reactive_power")

#Output
dev.copy(png, file="plot4.png", width=480, height=480)
dev.off()