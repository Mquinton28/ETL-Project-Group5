# ETL-Project-Group5

## Question:
How does the number of COVID-19 cases relate to community mobility in Indiana?

## Datasets:
Google Community Mobility Reports 
https://www.google.com/covid19/mobility

Johns Hopkins COVID-19 Case Tracker 
https://data.world/associatedpress/johns-hopkins-coronavirus-case-tracker

## Steps:

### Extract:
* Mobility report - “2020_US_Region_mobility_Report.csv”
    * load into Jupyter notebook
* Indiana New Cases Report - "IN_COVID.csv"
    * We chose this dataset from the CDC by selecting Indiana and downloading the csv file that shows new cases compared to 7 day moving average by date. The reason we selected this dataset was to compare the data to our Google mobility dataset. We hope to compare cases and where people were going to see if there is a correlation or a causation to the rise in cases.
    * Loaded into Jupyter notebook
    * 
* Indiana Cases by Johns Hopkins - "cases.csv"
    * We chose this dataset from data.world from Johns Hopkins by downloading the csv file with by date data for the US. Our hope is to compare this as well to our Google mobility dataset to see if there is a correlation between rise and cases and mobility.
    * Loaded into Jupyter notebook

### Transform:
* Mobility report:
    * rename columns
    * drop unnecessary columns
    * keep rows with Indiana as state
    * drop rows with blank counties
    * set date as index
    * group by date and find the mean of each mobility category

### Load:   
* load transformed data frames into Postgresql database covid-indiana
    * Mobility report - load data frame into table mobility_per_date