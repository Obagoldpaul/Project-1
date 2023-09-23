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
Column names were checked to ensure consistency in names. There was consistency in the column names.

* **Confirm datatype.**  
Confirm datatype of columns in each data. The datatypes were consistent along all datasets.

* **Merge data.**  
There 12 data sets were merged into a single dataframe.

* **Rename columns where necessary.**  
Some columns were renamed to enhance readability.

* **Check distinct values.**  
Check some column's unique values where necessary. There were 3 types of bike; "**electric**", "**classic**" and "**docked**" while we had 2 type of customer; "**casual**" and "**member**".

* **Check for duplicate rows.**  
Check the dataframe to avoid duplicate rows. There were no duplicate rows in the dataframe.

* **Check for Null in columns.**  
The Null values need to be investigated to identify the best cause of action. The total number of rows that will be lost if the null rows were dropped was 1,383,239. Loosing this vast data point could result to lose of important insight in the analysis. Therefore for this particular analysis, the rows will be kept for analysis.


## Analyze

In other to better see how customer use the cyclistic bike differently, a new column was calculated called `duration` in Secs, the difference between the `ended_at` and `started_at`. 

* **Filter ride duration** 
To avoid a bias analysis, the question below was considered:  
 
  * **Q: "What is the minimum and maximum duration a customers allowed to have access to a ride?"**  
  * **A:The bikes can be unlocked from one station and returned to any other station in the system anytime (find in "About the company").**

Therefore, `duration` less than and equal to zero(<= 0) were dropped. A total of 715 rides were filtered out because their ride duration is zero or negative which are not acceptable in this analysis.

* **Check summary of data.**  
This the summary of the cleaned data.
  * Total valid ride is 5,722,891.
  * The date of ride is from 2022-08-01 to 2023-07-31.
  * On average ride duration is  1102sec (18mins 4secs).
  * The maximum ride duration is 3087684sec (35hrs 7min).

* **Save cleaned data**
The cleaned data was saved for further analysis in Tableau. 

* **Tableau analysis.**  
The cleaned data was imported to Tableau for further analysis. In Tableau, the days of the week and month of the year were extracted from `started_at`. The months were further grouped into 4 season namely; Spring, Summer, Autumn and Winter.
**Note:** Click Analysis 1 and 2 to interact with the dashboard. 

### [**Analysis 1**](https://public.tableau.com/views/Tripdatacleaned/Analysis1?:language=en-US&:display_count=n&:origin=viz_share_link)

<div class='tableauPlaceholder' id='viz1694948869236' style='position: relative'><noscript><a href='#'><img alt='Analysis 1 ' src='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Tr&#47;Tripdatacleaned&#47;Analysis1&#47;1_rss.png' style='border: none' /></a></noscript><object class='tableauViz'  style='display:none;'><param name='host_url' value='https%3A%2F%2Fpublic.tableau.com%2F' /> <param name='embed_code_version' value='3' /> <param name='site_root' value='' /><param name='name' value='Tripdatacleaned&#47;Analysis1' /><param name='tabs' value='no' /><param name='toolbar' value='yes' /><param name='static_image' value='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Tr&#47;Tripdatacleaned&#47;Analysis1&#47;1.png' /> <param name='animate_transition' value='yes' /><param name='display_static_image' value='yes' /><param name='display_spinner' value='yes' /><param name='display_overlay' value='yes' /><param name='display_count' value='yes' /><param name='language' value='en-US' /></object></div>                

### [**Analysis 2**](https://public.tableau.com/views/Tripdatacleaned/Analysis2?:language=en-US&:display_count=n&:origin=viz_share_link)

<div class='tableauPlaceholder' id='viz1694948960858' style='position: relative'><noscript><a href='#'><img alt='Analysis 2 ' src='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Tr&#47;Tripdatacleaned&#47;Analysis2&#47;1_rss.png' style='border: none' /></a></noscript><object class='tableauViz'  style='display:none;'><param name='host_url' value='https%3A%2F%2Fpublic.tableau.com%2F' /> <param name='embed_code_version' value='3' /> <param name='site_root' value='' /><param name='name' value='Tripdatacleaned&#47;Analysis2' /><param name='tabs' value='no' /><param name='toolbar' value='yes' /><param name='static_image' value='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Tr&#47;Tripdatacleaned&#47;Analysis2&#47;1.png' /> <param name='animate_transition' value='yes' /><param name='display_static_image' value='yes' /><param name='display_spinner' value='yes' /><param name='display_overlay' value='yes' /><param name='display_count' value='yes' /><param name='language' value='en-US' /><param name='filter' value='publish=yes' /></object></div>    


## Share
### Key findings
#### **Total ride**
 + 37.90% of the total ride from August 2022 to July 2023 are from casual customer while 62.10% are from member.

#### **Ride type**
 + The most used bike are Electric bikes, followed by Classic bikes.
 + Only casual customers use Decked bikes.
 + The most used bike by casual and member customers are Electric bike.

#### **Ride by month**
 + Total ride declined from September, 2022 down to February, 2023 and increased from March, 2023 to July, 2023.
 + Generally for each month, member rides are more than casual rides.
 + Total ride is highest at the third quarter of the year.
 + Total ride is lowest at the first quarter of the year.
 + By season of the year in [Chicago](https://seasonsyear.com/USA/Illinois/Chicago), customers least go for ride in Winter, highest number of rides are gotten in summer.

#### **Ride duration by days of week**
 + On average casual customers go on longer rides than member customers.
 + Ride duration for members is steady across the weekdays and have their longest rides on Saturday and Sunday (weekend).
 + Ride duration for casuals declines from Tuesday to Thursday and increases from Friday to have their longest rides on Saturday and Sunday. 

#### **Ride duration by month**
 + Casual customers go on longer rides than member customers throughout the year.
 + Casual go on their longest rides in the Summer and shortest ride in November, the last month of Autumn.
 + Members go on their longest rides also in the Summer and shortest ride in January, the second month in Winter.

#### **Start station**
 + The most used start station by both customers is **Streeter Dr & Grand Ave** with 67,200 rides starting from there.
 + The most used start station by casual customers is **Streeter Dr & Grand Ave** with over 50,000 rides starting from there.
 + The most used start station by member customers is **Kingsbury St & Kinzie St** with over 25,000 rides starting from there.

#### **End station**
 + The most used end station by both customers is **Streeter Dr & Grand Ave** with 67,812 rides ending here.
 + The most used end station by casual customers is **Streeter Dr & Grand Ave** with over 52,000 rides ending here.
 + The most used end station by member customers is **Kingsbury St & Kinzie St** with over 25,000 rides ending here.


## Act

### **Conclusion**
From this analysis, the data shows that members go on more rides than casuals using cyclistic bikes. Casuals uses the cyclistic bikes for longer rides than members, this could be as a result of casuals riding for leisure and members to commute to work each day. Both customers prefer to go on rides in the summer months than the winter months.


### **Recommendation**
Here are my top 3 recommendations:  
+ Create **special 6 month package** leaning towards membership plan from May to October.  
+ Discounts on annual membership plan to casual riders with longer rides duration.  
+ Awards or Prizes on longer rides available to only Cyclistic annual members.

The campaign should be targeted at casuals most used start and end stations. It will be most effective during May to October from Fridays to Saturdays.

## Presentation Slide

Click [here](https://docs.google.com/presentation/d/1u2w5uaTBGS4g5sOd3TkKOMzUGtwTHZkjD8K3Pg3AJKc/edit?usp=sharing)
