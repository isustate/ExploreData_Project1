# Exploratory Data Analysis Project 1 Repository Overview

R program graphs household power consumption data from http://archive.ics.uci.edu/ml/.  Program reads file household_power_consumption.txt dataset, filters to dates of 2007-02-01 and 2007-02-02 and generates 4 different style plots for analysis.  


Source data:
==============
http://archive.ics.uci.edu/ml/


Variables:
===========
* Date: Date in format dd/mm/yyyy
* Time: time in format hh:mm:ss
* Global_active_power: household global minute-averaged active power (in kilowatt)
* Global_reactive_power: household global minute-averaged reactive power (in kilowatt)
* Voltage: minute-averaged voltage (in volt)
* Global_intensity: household global minute-averaged current intensity (in ampere)
* Sub_metering_1: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered).
* Sub_metering_2: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light.
* Sub_metering_3: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.


R Scripts:
===============
* plot1.R
* plot2.R
* plot3.R
* plot4.R


R Plots:
===============
* plot1.png
* plot2.png
* plot3.png
* plot4.png


Program Step(s):
===============
1.  Imports household power consumption data.  
2.  Data is filtered to dates 2007-02-01 and 2007-02-02
3.  Graphing variables are converted to numerical formats.
4.  Plots are made from respective R Script.
	* plot1.R ==>  plot1.png
	* plot2.R ==>  plot2.png
	* plot3.R ==>  plot3.png
	* plot4.R ==>  plot4.png
