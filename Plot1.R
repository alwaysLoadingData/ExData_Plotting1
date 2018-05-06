
#Create Plot 1 - Global Active Power histogram

#set this directory as the working directory
this.dir <- dirname(parent.frame(2)$ofile)
setwd(this.dir)

#Prepare the data if needed
source("./prepare_data.R")

png("./Plot1.png",
    width = 504,
    heigh = 504)

hist(
  household_power_consumption$Global_active_power,
  breaks = seq(0, 7.5, 0.5),
  main = "Global Active Power",
  xlab = "Global Active Power (kilowatts)",
  col = "Red"
)

dev.off()

