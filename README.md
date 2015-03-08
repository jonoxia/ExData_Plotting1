
## Creating the plots

Hello, reviewers! Here's how the code in this repository works.

1. Download the <a href="https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip">Electric power consumption</a> dataset, and unzip it.
2. Move the file called household_power_consumption.txt into this Git checkout directory.
3. Rather than trying to load such a large file into memory all at once in R, I wrote a very small Python script that filters the full dataset down to just the two days 01/02/2007 and 02/02/2007. To run this script (assuming you have Python installed), do `python reduce_dataset.py`.
4. In case you don't have Python installed, I also included the resulting output file ("just_two_days.txt") in this repository. The rest of my scripts depend on having it available.
5. The scripts plot1.R, plot2.R, plot3.R, and plot4.R generate the four chars. To run them all, simply start R and then do:


`
> source('plot1.R')

> source('plot2.R')

> source('plot3.R')

> source('plot4.R')
`
