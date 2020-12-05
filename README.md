# ETL-Project-Group5

## Question:
How does the number of COVID-19 cases relate to community mobility in Indiana?

## Datasets:
Google Community Mobility Reports https://www.google.com/covid19/mobility

Johns Hopkins COVID-19 Case Tracker https://data.world/associatedpress/johns-hopkins-coronavirus-case-tracker

## Steps:

### Extract:
* Mobility report - “2020_US_Region_mobility_Report.csv”
    * load into Jupyter notebook

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