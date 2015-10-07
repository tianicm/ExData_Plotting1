# JM Stewart
# Exploratory Data Analysis-Course Poject1:Plot4
###############################################################################
# Creating Fourth Plot

plot4 <- function() {

# Make two rows and two columns
        par(mfrow=c(2,2))
        
# First plot - much like plot1.R except the x-axis is different

        plot(stats$Global_active_power, type="l", xlab="", ylab="Global Active Power")
        
# Second plot - Plotting the voltage

        plot(stats$Voltage, type="l", xlab="datetime", ylab="Voltage")
        
# Third plot- Exactly like plot3.R

        plot(stats$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
        lines(stats$Sub_metering_2,col="red")
        lines(stats$Sub_metering_3,col="blue")

#axis(1, at = c(1, 1441, 2880), labels=c("Thu", "Fri", "Sat"))
#bty removes the box, cex shrinks the text, spacing added after labels so it renders correctly
        
        legend("topright", col=c("black","red","blue"), c("Sub_metering_1  ","Sub_metering_2  ", "Sub_metering_3  "),lty=c(1,1), bty="n", cex=.5) 
        
# Fourth plot-Plot the global inactive power
        plot(stats$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")
        
        #Save to file
        dev.copy(png, file="plot4.png", width=480, height=480)
        dev.off()
       
}
# Grap plot4

plot4()