# JM Stewart
# Exploratory Data Analysis-Course Poject1:Plot3
###############################################################################

# Creating Third plot

plot3 <- function() {
        par(mfrow=c(1,1))
# Make the x labels blank
        plot(stats$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")

# Add in lines
# Make them red and blue      
        lines(stats$Sub_metering_2,col="red")
        lines(stats$Sub_metering_3,col="blue")

# Add Legend
        legend("topright", col=c("black","red","blue"), c("Sub_metering_1  ","Sub_metering_2  ", "Sub_metering_3  "),lty=c(1,1), lwd=c(1,1))

# Save to file        
        dev.copy(png, file="plot3.png", width=480, height=480)
        dev.off()
        }
# Graph plot 1

plot3()