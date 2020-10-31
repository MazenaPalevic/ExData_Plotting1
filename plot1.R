household_power_consumption <- read.csv("C:/Users/Marzena/Downloads/exdata_data_household_power_consumption/household_power_consumption.txt", sep=";", dec = ",")
>   View(household_power_consumption)
> library(ggplot2)


> hist(as.numeric(as.character(household_power_consumption$Global_active_power)))


hist(as.numeric(as.character(household_power_consumption$Global_active_power)),
     main="Global Active Power",
     xlab="Global Active Power (kilowatts)",
     ylab= "Frequency",
     xlim=c(0,6),
     col="red",
     freq=FALSE
)