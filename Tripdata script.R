####################################
# Process
###################################

# Load environment
library(readr)
library(tidyverse)
library(lubridate)
library(skimr)
library(dplyr)

# Import data
tripdata_2022_08 <- read_csv("/kaggle/input/tripdata-new/202208-divvy-tripdata/202208-divvy-tripdata.csv") 

tripdata_2022_09 <- read_csv("/kaggle/input/tripdata-new/202209-divvy-tripdata/202209-divvy-publictripdata.csv") 

tripdata_2022_10 <- read_csv("/kaggle/input/tripdata-new/202210-divvy-tripdata/202210-divvy-tripdata.csv") 

tripdata_2022_11 <- read_csv("/kaggle/input/tripdata-new/202211-divvy-tripdata/202211-divvy-tripdata.csv") 

tripdata_2022_12 <- read_csv("/kaggle/input/tripdata-new/202212-divvy-tripdata/202212-divvy-tripdata.csv") 

tripdata_2023_01 <- read_csv("/kaggle/input/tripdata-new/202301-divvy-tripdata/202301-divvy-tripdata.csv") 

tripdata_2023_02 <- read_csv("/kaggle/input/tripdata-new/202302-divvy-tripdata/202302-divvy-tripdata.csv") 

tripdata_2023_03 <- read_csv("/kaggle/input/tripdata-new/202303-divvy-tripdata/202303-divvy-tripdata.csv") 

tripdata_2023_04 <- read_csv("/kaggle/input/tripdata-new/202304-divvy-tripdata/202304-divvy-tripdata.csv") 

tripdata_2023_05 <- read_csv("/kaggle/input/tripdata-new/202305-divvy-tripdata/202305-divvy-tripdata.csv") 

tripdata_2023_06 <- read_csv("/kaggle/input/tripdata-new/202306-divvy-tripdata/202306-divvy-tripdata.csv") 

tripdata_2023_07 <- read_csv("/kaggle/input/tripdata-new/202307-divvy-tripdata/202307-divvy-tripdata.csv")


#  Check column names

colnames(tripdata_2022_08)
colnames(tripdata_2022_09)
colnames(tripdata_2022_10)
colnames(tripdata_2022_11)
colnames(tripdata_2022_12)
colnames(tripdata_2023_01)
colnames(tripdata_2023_02)
colnames(tripdata_2023_03)
colnames(tripdata_2023_04)
colnames(tripdata_2023_05)
colnames(tripdata_2023_06)
colnames(tripdata_2023_07)

# summary

summary(tripdata_2022_08)
summary(tripdata_2022_09)
summary(tripdata_2022_10)
summary(tripdata_2022_11)
summary(tripdata_2022_12)
summary(tripdata_2023_01)
summary(tripdata_2023_02)
summary(tripdata_2023_03)
summary(tripdata_2023_04)
summary(tripdata_2023_05)
summary(tripdata_2023_06)
summary(tripdata_2023_07)

# Merge data into a single dataframe

tripdata <- rbind(tripdata_2022_08, tripdata_2022_09,
                  tripdata_2022_10, tripdata_2022_11,
                  tripdata_2022_12, tripdata_2023_01,
                  tripdata_2023_02, tripdata_2023_03,
                  tripdata_2023_04, tripdata_2023_05,
                  tripdata_2023_06, tripdata_2023_07)

# Have a glimpse at the merged data sets 

glimpse(tripdata)

# Rename column for better readability

tripdata <- tripdata %>% 
  rename(bike = rideable_type,
         customer = member_casual)

# Confirm rename

colnames(tripdata)

# Check for uniqueness

unique(tripdata$bike)

unique(tripdata$customer)

nrow(tripdata_unique) - nrow(tripdata)

# Check NA in dataset

colSums(is.na(tripdata))

# Investigate null values

tripdata_nonas <- tripdata %>% 
  drop_na()

nrow(tripdata) - nrow(tripdata_nonas)

####################################
# Analyze
###################################

# Calculate ride duration

tripdata_v1 <- tripdata %>% 
  mutate(duration = as.numeric(difftime(ended_at, started_at)))

glimpse(tripdata_v1)

# Remove observation where ride length is less than 0

tripdata_v2 <- tripdata_v1 %>% 
  filter(duration > 0)

nrow(tripdata_v1)-nrow(tripdata_v2)

# Summary of data

summary(tripdata_v2)

# Sqve cleaned data
write_csv(tripdata_v2, "tripdata_v2.csv")