mydata1 <- read.delim('household_power_consumption.txt',na.strings="?",stringsAsFactors=F, sep=";")
mydata <- subset(mydata1, Date %in% c("1/2/2007","2/2/2007"))
mydata$DateTime1 <- paste(as.Date(mydata$Date,format = "%d/%m/%Y"),mydata$Time)
mydata$DateTime <- as.POSIXct(mydata$DateTime1)
png("plot2.png",width=480,height=480)
with(mydata,
    {plot(Global_active_power~DateTime,type="l",xlab="",ylab="Global Active Power (kilowatts)")})
dev.off()