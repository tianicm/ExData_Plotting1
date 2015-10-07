# JM Stewart
# Exploratory Data Analysis-Course Poject1:Plot2
###############################################################################

# Creating second Plot

plot2 <- function() {
        par(mfrow=c(1,1))

# Make the x labels blank as per the requirements

        plot(stats$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
        
# Save to file
	  dev.copy(png, file="plot2.png", width=480, height=480)
        dev.off()
        
}

# Graph plot 1

plot2()