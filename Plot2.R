
#Create Plot 2 - Global Active Power line graph

#set this directory as the working directory
this.dir <- dirname(parent.frame(2)$ofile)
setwd(this.dir)

#Prepare the data if needed
source("./prepare_data.R")

png("./Plot2.png",
    width = 504,
    heigh = 504)

with(household_power_consumption,
   plot(
    DateTime,
    Global_active_power,
    type = "l",
    main = "",
    xlab = "",
    ylab = "Global Active Power (kilowatts)"
  )
)

dev.off()

