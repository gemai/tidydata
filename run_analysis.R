#########################################################################
## Step 1: Merge the training and the test sets to create one data set ##
#########################################################################

## Read features.txt. It contains a list with the columns used originally in X_test and X_train tables
features <- read.table("features.txt")
## Columns of the features data set are now the default V1 and V2

## Read test files
## subject_test.txt only has one column: each row identifies the subject who performed the activity for each sample
## y_test.txt only has one column: each row identifies the activity performed
## X_test.txt has 561 columns. The column names are now in features$V2

subject_test <- read.table("subject_test.txt", col.names = c("subjectid"))
y_test <- read.table("y_test.txt", col.names = c("activity"))
X_test <- read.table("X_test.txt", check.names = FALSE, col.names =  features$V2)

## Read training files
subject_train <- read.table("subject_train.txt", col.names = c("subjectid"))
y_train <- read.table("y_train.txt", col.names = c("activity"))
X_train <- read.table("X_train.txt", check.names = FALSE, col.names =  features$V2)

## Merge the test sets
test <- cbind(subject_test, y_test, X_test)

## Merge the training sets
training <- cbind(subject_train, y_train, X_train)

## Merge the training and the test sets to create one data set
projectdata <- rbind(test, training)

###################################################################################################
## Step 2: Extract only the measurements on the mean and standard deviation for each measurement ##
###################################################################################################

## Select the columns with mean() in their names
colsmean <- grep("mean\\()",names(projectdata), value = FALSE)

## Select the columns with std() in their names
colsstd <- grep("std\\()",names(projectdata), value = FALSE)

## Include the first two columns of our unique data set (subjectid, activity) in the selection of columns
colsforextract <- c(1,2,colsmean,colsstd)

## Create a subset of our unique data set - projectdata - containing only the columns selected above
projectdataextract <- projectdata[,colsforextract]

###################################################################################
## Step 3: Use descriptive activity names to name the activities in the data set ##
###################################################################################

## The activity column of projectdataextract is currently an ID (1 - 6)
## Change the activity IDs with activity names, using activity_labels.txt

projectdataextract$activity <- gsub(1,"WALKING",projectdataextract$activity)
projectdataextract$activity <- gsub(2,"WALKING_UPSTAIRS",projectdataextract$activity)
projectdataextract$activity <- gsub(3,"WALKING_DOWNSTAIRS",projectdataextract$activity)
projectdataextract$activity <- gsub(4,"SITTING",projectdataextract$activity)
projectdataextract$activity <- gsub(5,"STANDING",projectdataextract$activity)
projectdataextract$activity <- gsub(6,"LAYING",projectdataextract$activity)

###################################################################################
## Step 4: Appropriately labels the data set with descriptive variable names     ##
###################################################################################

## Eliminate the special characters: - and ()
colnames(projectdataextract) <- gsub("-", "", names(projectdataextract))
colnames(projectdataextract) <- gsub("\\()", "", names(projectdataextract))

## Be more descriptive: change "t" to "time" and "f" to "freq"
colnames(projectdataextract) <- gsub("^t", "time", names(projectdataextract))
colnames(projectdataextract) <- gsub("^f", "freq", names(projectdataextract))

#######################################################################################
## Step 5: From the data set in step 4, create a second, independent tidy data set   ## 
##              with the average of each variable for each activity and each subject ##
#######################################################################################

## Group projectdataextract by subjectid and then by activity. The new dataset will have only one observation
## for each subjectid - activity pair (30 subjects * 6 activities = 180 rows)
## Use the summarise_all function to calculate the mean of the 68 columns of projectdataextract 
## for each subjectid - activity pair

install.packages("dplyr")
library(dplyr)

projectdataextractgroupby <- projectdataextract %>%
        group_by(subjectid, activity) %>%
        summarise_all(mean)

## Create a txt file in the working directory with the tidy data set
write.table(projectdataextractgroupby, file = "tidydata.txt", row.names = FALSE)




