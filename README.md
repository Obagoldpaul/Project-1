# Google Anayltics Capstone: Cyclistic Bike-share Analysis

## Introduction

This is a Cyclistic bike share analysis case study from Google analytics Capstone, where I have performed real world task of a junior data analyst. In order to answer the business key questions I have followed the data analysis process: ask, prepare, process, analyze, share, and act.

## Quick links: 

Data source: [divvy_tripdata](https://divvy-tripdata.s3.amazonaws.com/index.html)

## Scenario

You are a junior data analyst working in the marketing analyst team at Cyclistic, a bike-share company in Chicago. The director of
marketing believes the company’s future success depends on maximizing the number of annual memberships. Therefore, your
team wants to understand how casual riders and annual members use Cyclistic bikes differently. From these insights, your team will
design a new marketing strategy to convert casual riders into annual members. But first, Cyclistic executives must approve your
recommendations, so they must be backed up with compelling data insights and professional data visualizations.

## About the company

In 2016, Cyclistic launched a successful bike-share offering. Since then, the program has grown to a fleet of 5,824 bicycles that are
geotracked and locked into a network of 692 stations across Chicago. The bikes can be unlocked from one station and returned to
any other station in the system anytime.
Until now, Cyclistic’s marketing strategy relied on building general awareness and appealing to broad consumer segments. One approach that helped make these things possible was the flexibility of its pricing plans: single-ride passes, full-day passes, and
annual memberships. Customers who purchase single-ride or full-day passes are referred to as casual riders. Customers who
purchase annual memberships are Cyclistic members.

## Ask

Three questions will guide the future marketing program:  
**1. How do annual members and casual riders use Cyclistic bikes differently?**  
**2. Why would casual riders buy Cyclistic annual memberships?**  
**3. How can Cyclistic use digital media to influence casual riders to become members?**

#### **Business Task**

Categorize and analyze the distinct usage pattern between annual members and casual riders of Cyclistic bikes. This task will aim to gain insight on how the two users distinctively utilize the bike sharing service.

#### **Stakeholders**

The stake holders are as follows:  
  + Lily Moreno (Director of marketing and my manager).  
  + Cyclistic Marketing analytics team (my team).  
  + Cyclistic Executive team.


## Prepare

The data is stored in csv files format in a long data format and the data is an internal data. The data is unbiased and credible, it can be used to explore how different customer types are using Cyclistic bikes. The data **ROCCCs**

* **Reliable:** The data is accurate and unbiased.
* **Original:** It original source can be validated.
* **Comprehensive:** The data has the critical information to perform the task.
* **Current:** The data is current and relevant to the task, August 2022 to July 2023.
* **Cited:** The data [source](https://divvy-tripdata.s3.amazonaws.com/index.html) is known.

Some information are not available due to data privacy, to secure the data access control (such as versions) will be implemented.


## Process
For this analysis **R** will be used to process, clean and analyze the data while **Tableau** will be used to create compelling visuals.

To determine and maintain the integrity of the data, pre-cleaning activities such as ensuring overall consistency, accuracy and completeness of data were carried out. To ensure the data is clean and ready for analysis, the following were carried out:

#### **Rstudio** [R script]()
* **Make copy of datasets.**

* **Connect objective to data.**

* **Load the environment.**  
Loading my environment with `readr`, `tidyverse`, `lubridate`, `skimr`.

* **Import the data.**  
Import individual data into the work space, 12 data sets were imported into the work space (August, 2022 to July, 2023).

* **Check column names.**  
Column names were checked to ensure consistency in names.There was consistency in the column names.

* **Confirm datatype.**  
Confirm datatype of columns in each data. The datatypes were consistent with the other datasets.

* **Merge data.**  
There 12 data sets were merged into a single dataframe.
