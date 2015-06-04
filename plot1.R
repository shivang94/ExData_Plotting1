power<-read.table("hpc.txt",header=TRUE,sep=";")
power<-power[as.Date(power$Date)]
power<-power[power$Date=="1/2/2007" | power$Date=="2/2/2007",]
png(filename="plot1.png")
hist(as.numeric(power$Global_active_power),col="red",xlab="Global Active Power (kilowatts)",main="Global Active Power")
dev.off()