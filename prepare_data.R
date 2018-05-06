
require(dplyr)


#download the data file if we need it

data_url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
data_dir <- "./data"
data_zip <- paste(data_dir, "/household_power_consumption.zip", sep = "")
data_file <- paste(data_dir, "/household_power_consumption.txt", sep = "")

if(!file.exists(data_file))
{
  if(!dir.exists(data_dir))
  {
    dir.create(data_dir)
  }
  
  download.file(data_url, data_zip)
  
  unzip(data_zip, exdir = data_dir)
}

#load the data if we need to

if(!"household_power_consumption" %in% ls())
{
  household_power_consumption <- read.csv(data_file, 
                                          sep = ";",
                                          na.strings = c("?"),
                                           colClasses = c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric")
                                          )  %>%
          mutate(DateTime = as.POSIXct(paste(Date, Time), format = "%d/%m/%Y %H:%M:%S")) %>%
          filter(DateTime >= as.POSIXct("2007-02-01") & DateTime < as.POSIXct("2007-02-03")) %>%
          select(-Date, -Time)
}

