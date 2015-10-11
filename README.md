## Introduction

This is the first course project for the John Hopkins course on Exploratory Data Analysis. The goal is to create for plots from data on individual household electric power consumption.

This assignment uses data from
the <a href="http://archive.ics.uci.edu/ml/">UC Irvine Machine
Learning Repository</a>, a popular repository for machine learning
datasets. In particular, we will be using the "Individual household
electric power consumption Data Set" which I have made available on
the course web site:


* <b>Dataset</b>: <a href="https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip">Electric power consumption</a> [20Mb]

* <b>Description</b>: Measurements of electric power consumption in
one household with a one-minute sampling rate over a period of almost
4 years. Different electrical quantities and some sub-metering values
are available.

## Running the R scripts

There are four different R-scripts that create four different plots.



## Desciption of the four plots

### Plot 1

This plot shows how often households had a global active power of between 0-6 Kilowatts.

There are peaks between 0-5 KW and 1.5-2 KW, which means that most often households use between 0-5 KW or 1.5-2 KW of global active power.

![plot 1](plot1.png) 


### Plot 2

This plot shows the global active power over time for the dates 2007-02-01 and 2007-02-02. 

There are peaks in the morning and evenings, with lower power usage during the week over time for the dates 2007-02-01 and 2007-02-02. The peaks on Thursday are higher than the peaks on Friday.

![plot 2](plot2.png) 


### Plot 3

This plot shows the submetering (in watt-hours of active energy) for various parts of the house. The three parts depicted are:

* Sub_metering_1: corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered)
* Sub_metering_2: corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light
* Sub_metering_3: corresponds to an electric water-heater and an air-conditioner
 
There are two peaks in the kitchen (sub_metering_1) on Thursday during the morning, most likely the dishwasher running twice. The laundry room (sub_metering_2), most likely the refrigerator, seems to come on 9-10 times per day, providing small peaks. The water heater and air-conditioner (sub_metering_3)seems to come on mostly during the day and at night, with more peaks on Friday than on Thursday.


![plot 3](plot3.png) 


### Plot 4

This plot shows the same plots as plot 2 and plot 3, but also adds a plot on voltage over time and reactive power over time.

The plot in the right top corner shows the voltage over time. There are throughs when the global active power (left top corner plot) peaks. This makes sense: when households use more power, there is a temporary dip in voltage as additional power generators are switched on. 

The plot in the lower right corner shows the the reactive power over time. The peaks seems to follow the same peaks as for the active power. This makes sense, as reactive power is the portion of power due to stored energy, which returns to the source in each cycle.

![plot 4]([plot4.png) 

