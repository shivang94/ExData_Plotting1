power<-read.table("hpc.txt",header=TRUE,sep=";")
power<-power[as.Date(power$Date)]
power<-power[power$Date=="1/2/2007" | power$Date=="2/2/2007",]
png(filename="plot4.png")
par(mfrow=c(2,2))
with(power,plot(strptime(paste(power$Date,power$Time),format="%d/%m/%Y %H:%M:%S"),as.numeric(Global_active_power),type="l",xlab="",ylab="Global Active Power (kilowatts)"))
with(power,plot(strptime(paste(power$Date,power$Time),format="%d/%m/%Y %H:%M:%S"),as.numeric(as.character((Voltage))),type="l",xlab="datetime",ylab="Voltage"))
with(power,plot(strptime(paste(power$Date,power$Time),format="%d/%m/%Y %H:%M:%S"),as.numeric(as.character(Sub_metering_1)),type="l",xlab="",ylab="Energy Sub Metering"))
with(power,lines(strptime(paste(power$Date,power$Time),format="%d/%m/%Y %H:%M:%S"),as.numeric(as.character((Sub_metering_2))),col="red"))
with(power,lines(strptime(paste(power$Date,power$Time),format="%d/%m/%Y %H:%M:%S"),as.numeric(Sub_metering_3),col="blue"))
legend("topright",bty="n",lty=1,legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"))
with(power,plot(strptime(paste(power$Date,power$Time),format="%d/%m/%Y %H:%M:%S"),as.numeric(as.character((Global_reactive_power))),type="l",xlab="datetime",ylab="Global Reactive Power"))
dev.off()