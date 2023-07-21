#Intro
This repo contain mcdm models for some social medias

#Hints:
- *Cost per engage* is just a spended sum divided by sum of engagements
- *Conversion cost* is calculated by dividing sum of spended by total conversions count
- *Impressions by channel* is a sum of impressions for each channel
- *CPC* gets like sum of spended divided by clicks count

#Tools
To complete this task, i use the following tools:
dbt Cloud
Google Big Query
Google Looker Studio

First i get some data from various ad platforms .
The question that i solved "Where clicks better on facebook or tiktok?"
Second in Google Big Query i analyze and clean data with sql 
Third i connect Google Big Query to dbt cloud and transform data and do etl process then i return ready made data to Bigquery
Finally i connect Google Big Query with Looker studio to make some Visual 

In folder seeds data from various ad platforms. 
In folder models ETL script. 
Here is link to dashboard https://lookerstudio.google.com/u/0/reporting/a0a5fe45-bedd-47a1-bfd4-083a797c3354/page/4i3UD/edit
