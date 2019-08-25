#Read data
datapath <- "./EDA1_data/household_power_consumption.txt"
data <- read.table(datapath, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
#Filter for the 2 interesting days
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#needed variable
globalActivePower <- as.numeric(subSetData$Global_active_power)
#plot name, size, Histogram in red color w. labels
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power",
     xlab="Global Active Power (kilowatts)")
dev.off()