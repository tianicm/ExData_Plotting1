# JM Stewart
# Exploratory Data Analysis-Course Poject1: Loading the data
# When loading the dataset into R, please consider the following:
# The dataset has 2,075,259 rows and 9 columns. First calculate a rough estimate of how much memory the dataset will require in memory before reading into R. Make sure your computer has enough memory (most modern computers should be fine).
# We will only be using data from the dates 2007-02-01 and 2007-02-02. One alternative is to read the data from just those dates rather than reading in the entire dataset and subsetting to those dates.
# You may find it useful to convert the Date and Time variables to Date/Time classes in R using the strptime() and as.Date() functions.
# Note that in this dataset missing values are coded as ?.
###############################################################################

# First grab the names from the dataset
# Load Data into working directory
# Unzip the dataset first
if(!file.exists("exdata-data-household_power_consumption.zip")) {
        temp <- tempfile()
        download.file("http://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",temp)
        file <- unzip(temp)
        unlink(temp)
}
file <- "household_power_consumption.txt"

# Only using data from the dates 2007-02-01 and 2007-02-02
# Now read it in
stats <- read.table(file, header = TRUE, sep = ";")
stats <- stats[ stats$Date %in% c( "1/2/2007", "2/2/2007" ), ]

# Using correct data types
stats$Global_active_power <- as.numeric( as.character( stats$Global_active_power ) )
stats$Global_reactive_power <- as.numeric( as.character( stats$Global_reactive_power ) )
stats$Voltage <- as.numeric( as.character( stats$Voltage ) )
stats$Sub_metering_1 <- as.numeric( as.character( stats$Sub_metering_1 ) )
stats$Sub_metering_2 <- as.numeric( as.character( stats$Sub_metering_2 ) )
stats$Sub_metering_3 <- as.numeric( as.character( stats$Sub_metering_3 ) )

# Create a new array for an actual date object
dataTime <- paste( stats$Date, stats$Time )
stats$DateTime <- strptime( dataTime, format = "%d/%m/%Y %H:%M:%S" )