power<-read.table("hpc.txt",header=TRUE,sep=";")
power<-power[as.Date(power$Date)]
power<-power[power$Date=="1/2/2007" | power$Date=="2/2/2007",]
png(filename="plot2.png")
with(power,plot(strptime(paste(power$Date,power$Time),format="%d/%m/%Y %H:%M:%S"),as.numeric(Global_active_power),type="l",xlab="",ylab="Global Active Power (kilowatts)"))
dev.off()