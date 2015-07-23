---
title: "README for run_analysis.R"
date: "Thursday, July 23, 2015"
output: html_document
---


## Packages required by the analysis file
The script run_analysis.R requires the plyr and dplyr packages. The script will load these packages, but they must be installed prior to running it.

## Data used by the analysis file
The script uses a set of data collected from the accelerometers of the Samsung Galaxy S smartphone. If the folder containing these data files is not in the working directory, it will download it from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. If the folder has not been unzipped, the script will unzip it.

## Function of run_analysis.R
The analysis script creates a text file called UCIHAR\_means\_tidy\_wide.txt in the working directory. This file contains a tidy data set (wide format) consisting of the means of selected variables from the original data set for each activity and each subject. 

As an example, according to the "featuresinfo" file in the original data set, the variable "tBodyAccmeanX" is the mean value of a particular signal having to do with the measurement of body acceleration along the X axis. The original data set contained multiple values of "tBodyAccmeanX" for each subject and activity. The data set  output by the script summmarizes this data, providing the average value of "tBodyAccmeanX" and 66 other variables for each subject and activity. 

## Descriptive names for variables
The tidy data set contains descriptive names for variables. For brevity and consistency, I chose to closely follow the names used in the original data set. However, characters not allowed in R variable names have been eliminated and "meanof" has been pre-pended to the name of each measurement variable to indicate that it reflects a calculated average of multiple records. Please see code book for more detail.

## How the analysis file works
After downloading and unzipping the data (if necessary), the script does the following:

* Reads the data into R

* Connects the "activity" and "subject" data to the "training" and "test" data sets as factor variables

* Maps the descriptive variable names from the "features" file to the appropriate columns of each data set

* Combines the training and test data sets into a single data frame

* Selects only the measurements on the mean and standard deviation for each measurement (Note: I chose not to include columns such as "meanFreq" that did not appear to be an overall calculated mean; if desired, these could be included with a small tweak to the script syntax)

* Replaces the numeric activity codes (1-6) with descriptive names (e.g. "WALKING", "STANDING")

* Creates new data set with the average of each variable for each activity and each subject

* Writes this table to a text file and prints a message to the console to this effect.
