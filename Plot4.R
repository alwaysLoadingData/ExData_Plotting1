#Create Plot 4 - Multiple graphs

#set this directory as the working directory
this.dir <- dirname(parent.frame(2)$ofile)
setwd(this.dir)

#Prepare the data if needed
source("./prepare_data.R")

png("./Plot4.png",
    width = 480,
    heigh = 480)

with(household_power_consumption,{
  #multiplot layout
  par("mfcol" = c(2,2))
  
  #Global active power graph
  plot(
    DateTime,
    Global_active_power,
    type = "l",
    main = "",
    xlab = "",
    ylab = "Global Active Power (kilowatts)"
  )
  
  #Sub metering graph
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
         col = c("black", "blue", "red"),
         bty = "n")
  
  #Volage graph
  plot(
    DateTime,
    Voltage,
    type = "l",
    xlab = "datetime"
  )
  
  #Global reactive power graph
  plot(
    DateTime,
    Global_reactive_power,
    type = "l",
    xlab = "datetime"
  )
})


dev.off()

