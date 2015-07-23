
## if folder not in working directory (either zipped or unzipped), download it
if(!file.exists("getdata_projectfiles_UCI HAR Dataset.zip") & !file.exists("UCI HAR Dataset")) {
  fileurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(fileurl, destfile="getdata_projectfiles_UCI HAR Dataset.zip")
}

## if folder has not been unzipped, unzip it
if(!file.exists("UCI HAR Dataset")) {
  unzip("getdata_projectfiles_UCI HAR Dataset.zip")
}

## load required packages
require(plyr, quietly=TRUE)
require(dplyr, quietly=TRUE)

## read data into R
xtrain <- read.table("UCI HAR Dataset/train/X_train.txt")
ytrain <- read.table("UCI HAR Dataset/train/y_train.txt")
xtest <- read.table("UCI HAR Dataset/test/X_test.txt")
ytest <- read.table("UCI HAR Dataset/test/y_test.txt")
trainsubjects <- read.table("UCI HAR Dataset/train/subject_train.txt")
testsubjects <- read.table("UCI HAR Dataset/test/subject_test.txt")
features <- read.table("UCI HAR Dataset/features.txt")
actlabels <- read.table("UCI HAR Dataset/activity_labels.txt")

## Add new variables to test and train data sets indicating set type, activity type, and subject of each record
## This is preparation for project step#1 (merging the data sets)
trainvector <- rep("train", times=7352)
testvector <- rep("test", times=2947)
xtrain <- cbind(trainvector, xtrain)
xtest <- cbind(testvector, xtest)
xtrain <- cbind(ytrain, xtrain)
xtest <- cbind(ytest, xtest)
xtrain <- cbind(trainsubjects, xtrain)
xtest <- cbind(testsubjects, xtest)

## More prep for step#1 and part of step #4
## Rename the new variables so the data frames can be combined with rbind
## First three columns (factor variables) will now have appropriate names
## Remaining columns (measurement values) will have names from features.txt file
featurenames <- as.character(features[,2])
validfeaturenames <- make.names(featurenames, unique=TRUE) ##fixes duplicate names and disallowed characters
colnames(xtrain) <- c("subject", "activity", "settype", validfeaturenames)
colnames(xtest) <- c("subject", "activity", "settype", validfeaturenames)

## Project step #1
## Combine the test and train data frames
alldata <- rbind(xtrain, xtest)

## Project step #2
## Select only the columns with mean or std dev measurements, or one of the three factor variables
## Using ".." because make.names used dots in place of "()" characters not allowed in column names
## Chose to exclude column names that were not strict versions of mean ("mean()" in the feature list)
## If these are desired, eliminate the ".." in the line below
subset <- select(alldata, contains("subject"), contains("activity"), contains("settype"), 
                 contains("mean.."), contains("std.."))

## Project step #3
##Replace numbers with descriptive names for activities
actvector <- as.character(actlabels[,2])
subset$activity <- factor(subset$activity, levels=c(1,2,3,4,5,6), labels=actvector)

## Project step #4 and #5
## Create new tidy data set
subset <- select(subset, -settype) ##remove settype factor variable (train vs. test) since not needed
groupedset <- group_by(subset, subject, activity)
meansdf <- summarise_each(groupedset, funs(mean))
## Clean up variable names so they are more descriptive
names <- names(meansdf)
names <- c(names[1:2], paste("meanof", names[3:69], sep="")) ##add "meanof" to measurement variables
names <- gsub("\\.", "", names) ##remove dots
colnames(meansdf) <- names
write.table(meansdf, file="UCIHAR_means_tidy_wide.txt", row.names=FALSE)
print("Tidy data set with average of each variable for each activity and each subject has been saved as UCIHAR_means_tidy_wide.txt in working directory.")

