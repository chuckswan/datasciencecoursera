
# run_analysis.R

# Clean up workspace
rm(list=ls())

library(dplyr)

# Pre-step 1:  
# Get data

# download zip file containing data only if it isn't already present
zipUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
zipFile <- "UCI HAR Dataset.zip"

if (!file.exists(zipFile)) {
  download.file(zipUrl, zipFile, mode = "wb")
}

# unzip zip file containing data if data directory isn't already present
dataPath <- "UCI HAR Dataset"
if (!file.exists(dataPath)) {
  unzip(zipFile)
}

# Pre-step 2: 
# Read data

# load datasets
trainSubjects <- read.table(file.path(dataPath, "train", "subject_train.txt"))
trainValues <- read.table(file.path(dataPath, "train", "X_train.txt"))
trainActivity <- read.table(file.path(dataPath, "train", "y_train.txt"))
testSubjects <- read.table(file.path(dataPath, "test", "subject_test.txt"))
testValues <- read.table(file.path(dataPath, "test", "X_test.txt"))
testActivity <- read.table(file.path(dataPath, "test", "y_test.txt"))

# read features
features <- read.table(file.path(dataPath, "features.txt"), as.is = TRUE)

# read activity labels
activities <- read.table(file.path(dataPath, "activity_labels.txt"))
colnames(activities) <- c("activityId", "activityLabel")

# Step 1 
# Merge the training and the test sets to create one data set
########

# merge individual data tables to make single data table
subjectActivity <- rbind(
  cbind(trainSubjects, trainValues, trainActivity),
  cbind(testSubjects, testValues, testActivity)
)

# assign column names
colnames(subjectActivity) <- c("subject", features[, 2], "activity")

# Step 2 
# Extract only the measurements on the mean and standard deviation for each measurement
#######

# Assign columns of data set to keep based on column names "mean" and "std" to variable
columns_to_keep <- grepl("subject|activity|mean|std", colnames(subjectActivity))

# keep data with column names "mean" and "std" (equal to columns_to_keep)
subjectActivity <- subjectActivity[, columns_to_keep]

# Step 3 
# Use descriptive activity names to name the activities in the data set
#######

# replace activity values with named factor levels
subjectActivity$activity <- factor(subjectActivity$activity, 
                                 levels = activities[, 1], labels = activities[, 2])

# Step 4
# Appropriately label the data set with descriptive variable names
######

# get column names
subjectActivityCols <- colnames(subjectActivity)

# remove special characters
subjectActivityCols <- gsub("[\\(\\)-]", "", subjectActivityCols)

# expand abbreviations and clean up names
subjectActivityCols <- gsub("^f", "frequency", subjectActivityCols)
subjectActivityCols <- gsub("^t", "time", subjectActivityCols)
subjectActivityCols <- gsub("Acc", "Accelerometer", subjectActivityCols)
subjectActivityCols <- gsub("Gyro", "Gyroscope", subjectActivityCols)
subjectActivityCols <- gsub("Mag", "Magnitude", subjectActivityCols)
subjectActivityCols <- gsub("Freq", "Frequency", subjectActivityCols)
subjectActivityCols <- gsub("mean", "Mean", subjectActivityCols)
subjectActivityCols <- gsub("std", "StandardDeviation", subjectActivityCols)

# correct "BodyBody"
subjectActivityCols <- gsub("BodyBody", "Body", subjectActivityCols)

# use new labels as column names
colnames(subjectActivity) <- subjectActivityCols

# Step 5 
# Create a second, independent tidy set with the average of each variable 
# for each activity and each subject

# group by subject and activity and summarise using mean
subjectActivityMeans <- subjectActivity %>% 
  group_by(subject, activity) %>%
  summarise_all(funs(mean))

# write to file "tidy_data.txt"
write.table(subjectActivityMeans, "tidy_data.txt", row.names = FALSE, 
            quote = FALSE)
