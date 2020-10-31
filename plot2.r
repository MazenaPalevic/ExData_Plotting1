household_power_consumption <- read.csv("C:/Users/Marzena/Downloads/exdata_data_household_power_consumption/household_power_consumption.txt", sep=";", stringsAsFactors=FALSE)
subSetData <- household_power_consumption[household_power_consumption$Date %in% c("1/2/2007","2/2/2007") ,]
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(subSetData$Global_active_power)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
  