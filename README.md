############################################################
## Getting and Cleaning Data - Course Project - README.md ##
############################################################

The script run_analysis.R creates a tidy data set (projectdataextractgroupby) and a file (tidydata.txt) from the files in 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. 

The variables of the tidy data set are described in CodeBook.md.

The script has 5 parts:

- Step 1: Merge the training and the test sets to create one data set

	- The test files - subject_test.txt, y_test.txt, and X_test.txt are concatenated using cbind
	- The training files - subject_train.txt, y_train.txt, and X_train.txt are concatenated using cbind
	- The final test file and the the final training file are merged using rbind

	The columns for this final file named projectdata are subjectid, activity and the 561 variable names in features.txt

- Step 2: Extract only the measurements on the mean and standard deviation for each measurement

	A new file named projectdataextract is created from projectdata. It only contains the following columns:

	- the first two columns of projectdata: subjectid, activity
	- the columns of projectdata with mean() in their names
	- the columns of projectdata with std() in their names

- Step 3: Use descriptive activity names to name the activities in the data set

	The activity column of projectdataextract is currently an ID (1 - 6). This step changes the activity IDs with activity names, using activity_labels.txt

- Step 4: Appropriately labels the data set with descriptive variable names
	
	It changes a little bit the existing names:

	- eliminates the special characters "-" and "()"
	- uses more descriptive names, changing "t" to "time" and "f" to "freq"

- Step 5: From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject

	A file named tidydata.txt is created in the working directory with the tidy data set. For doing so:

	- A new file named projectdataextractgroupby is created from projectdataextract grouping data by subjectid and then by activity. 
	The new dataset has only one observation for each subjectid - activity pair (30 subjects * 6 activities = 180 rows)
	
	- Then, the function summarise_all calculates the mean of the 68 columns of projectdataextract for each subjectid - activity pair



