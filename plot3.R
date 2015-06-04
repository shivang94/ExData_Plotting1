power<-read.table("hpc.txt",header=TRUE,sep=";")
power<-power[as.Date(power$Date)]
power<-power[power$Date=="1/2/2007" | power$Date=="2/2/2007",]
png(filename="plot3.png")
with(power,plot(strptime(paste(power$Date,power$Time),format="%d/%m/%Y %H:%M:%S"),as.numeric(as.character(Sub_metering_1)),type="l",xlab="",ylab="Energy Sub Metering"))
with(power,lines(strptime(paste(power$Date,power$Time),format="%d/%m/%Y %H:%M:%S"),as.numeric(as.character((Sub_metering_2))),col="red"))
with(power,lines(strptime(paste(power$Date,power$Time),format="%d/%m/%Y %H:%M:%S"),as.numeric(Sub_metering_3),col="blue"))
legend("topright",lty=1,legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"))
dev.off()