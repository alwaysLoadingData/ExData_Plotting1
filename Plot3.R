
#Create Plot 3 - Sub metering line graph

#set this directory as the working directory
this.dir <- dirname(parent.frame(2)$ofile)
setwd(this.dir)

#Prepare the data if needed
source("./prepare_data.R")

png("./Plot3.png",
    width = 504,
    heigh = 504)

with(household_power_consumption,{
     plot(
       DateTime,
       Sub_metering_1,
       type = "l",
       xlab = "",
       ylab = "Energy sub metering"
     )
     lines(DateTime,
           Sub_metering_2,
           col = "red")
     lines(DateTime,
           Sub_metering_3,
           col = "blue")
     legend("topright", pch = 151, 
            legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
            col = c("black", "blue", "red"))
})


dev.off()

