#Read data
datapath <- "./EDA1_data/household_power_consumption.txt"
data <- read.table(datapath, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
#Filter for the 2 interesting days
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#needed variables
globalActivePower <- as.numeric(subSetData$Global_active_power)
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "),
                     "%d/%m/%Y %H:%M:%S") 
#plot name, size, datetime vs. global active power
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="",
     ylab="Global Active Power (kilowatts)")
dev.off()