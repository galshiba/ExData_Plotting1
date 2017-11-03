# Load in the data
datafile <- "./data/household_power_consumption.txt"
household <- read.table(datafile,header=TRUE,sep=";",stringsAsFactors = FALSE,dec=".")

# Subset the data between February 1 and February 2, 2007
subdata <- household[household$Date %in% c("1/2/2007","2/2/2007"),]

# Not plot the Global Active Power
png("plot1.png",width=480,height=480)
hist(as.numeric(subdata$Global_active_power),col="red",main="Global Active Power (kilowatts)")
dev.off()
