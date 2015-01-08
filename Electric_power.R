#Read Data
Data1 <- read.table("household_power_consumption.txt",header=T
                   ,sep=';',na.strings='?'
                   ,colClasses=c(rep('character',2),rep('numeric',7)))

#Keep Data between 2007/2/1 and 2/2
Data1$Date <- as.Date(Data1$Date, format="%d/%m/%Y")

Data1 <- Data1[Data1$Date=='2007-02-01' | Data1$Date=='2007-02-02',]

Data1 <- transform(Data1, timestamp=as.POSIXct(paste(Date, Time))
                   , "%d/%m/%Y %H:%M:%S")