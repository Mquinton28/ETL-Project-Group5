# ETL-Project-Group5

## Question to answer:
How does the number of COVID-19 cases relate to community mobility in Indiana?

## Datasets:
Google Community Mobility Reports https://www.google.com/covid19/mobility

Johns Hopkins COVID-19 Case Tracker https://data.world/associatedpress/johns-hopkins-coronavirus-case-tracker

## Steps:

### Extract:
* load CSV files from websites in Jupiter notebooks
    *Mobility report - “2020_US_Region_mobility_Report.csv”

### Transform:
* Mobility report:
    * rename columns
    * drop unnecessary columns
    * keep rows with Indiana as state
    * drop rows with blank counties
    * set date as index
    * group by date and find the mean of each mobility category

### Load:   
* load transformed data frames into Postgresl database covid-indianan
    * Mobility report - load data frame into table mobility_per_date