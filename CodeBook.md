##################################################################################
# Code Book for the tidy data set created in Step 5 of the script run_analysis.R #
##################################################################################

In my case, the name of the tidy data set is projectdataextractgroupby.
It has 68 variables: subjectid from the subject_test/subject_train, activity from y_test/y_train and all the variables from X_test/X_train containing mean() or std()
in their names. Hence, the units for the variables are the units specified for the source files just mentioned.
Each row is the mean of the corresponding variable grouped by subjectid - activity. 

Variable Name			Variable Description				

subjectid			subject who performed the activity ( 1 to 30)				
activity			description of the activity				
timeBodyAccmeanX		time domain, body acceleration signal for X axis - mean				
timeBodyAccmeanY		time domain, body acceleration signal for Y axis - mean				
timeBodyAccmeanZ		time domain, body acceleration signal for Z axis - mean				
timeGravityAccmeanX		time domain, gravity acceleration signal for X axis - mean				
timeGravityAccmeanY		time domain, gravity acceleration signal for Y axis - mean				
timeGravityAccmeanZ		time domain, gravity acceleration signal for Z axis - mean				
timeBodyAccJerkmeanX		time domain, body acceleration Jerk signal for X axis - mean				
timeBodyAccJerkmeanY		time domain, body acceleration Jerk signal for Y axis - mean				
timeBodyAccJerkmeanZ		time domain, body acceleration Jerk signal for Z axis - mean				
timeBodyGyromeanX		time domain, body gyroscope signal for X axis - mean				
timeBodyGyromeanY		time domain, body gyroscope signal for Y axis - mean				
timeBodyGyromeanZ		time domain, body gyroscope signal for Z axis - mean				
timeBodyGyroJerkmeanX		time domain, body gyroscope Jerk signal for X axis - mean				
timeBodyGyroJerkmeanY		time domain, body gyroscope Jerk signal for Y axis - mean				
timeBodyGyroJerkmeanZ		time domain, body gyroscope Jerk signal for Z axis - mean				
timeBodyAccMagmean		time domain, body acceleration magnitude - mean				
timeGravityAccMagmean		time domain, gravity acceleration magnitude - mean				
timeBodyAccJerkMagmean		time domain, body acceleration Jerk magnitude - mean				
timeBodyGyroMagmean		time domain, body gyroscope magnitude - mean				
timeBodyGyroJerkMagmean		time domain, body gyroscope Jerk magnitude - mean				
freqBodyAccmeanX		frequency domain, body acceleration signal for X axis - mean				
freqBodyAccmeanY		frequency domain, body acceleration signal for Y axis - mean				
freqBodyAccmeanZ		frequency domain, body acceleration signal for Z axis - mean				
freqBodyAccJerkmeanX		frequency domain, body acceleration Jerk signal for X axis - mean				
freqBodyAccJerkmeanY		frequency domain, body acceleration Jerk signal for Y axis - mean				
freqBodyAccJerkmeanZ		frequency domain, body acceleration Jerk signal for Z axis - mean				
freqBodyGyromeanX		frequency domain, body gyroscope signal for X axis - mean				
freqBodyGyromeanY		frequency domain, body gyroscope signal for Y axis - mean				
freqBodyGyromeanZ		frequency domain, body gyroscope signal for Z axis - mean				
freqBodyAccMagmean		frequency domain, body acceleration magnitude - mean				
freqBodyBodyAccJerkMagmean	frequency domain, body acceleration Jerk magnitude - mean				
freqBodyBodyGyroMagmean		frequency domain, body gyroscope magnitude - mean				
freqBodyBodyGyroJerkMagmean	frequency domain, body gyroscope Jerk magnitude - mean				
timeBodyAccstdX			time domain, body acceleration signal for X axis - standard deviation				
timeBodyAccstdY			time domain, body acceleration signal for Y axis - standard deviation				
timeBodyAccstdZ			time domain, body acceleration signal for Z axis - standard deviation				
timeGravityAccstdX		time domain, gravity acceleration signal for X axis - standard deviation				
timeGravityAccstdY		time domain, gravity acceleration signal for Y axis - standard deviation				
timeGravityAccstdZ		time domain, gravity acceleration signal for Z axis - standard deviation				
timeBodyAccJerkstdX		time domain, body acceleration Jerk signal for X axis - standard deviation				
timeBodyAccJerkstdY		time domain, body acceleration Jerk signal for Y axis - standard deviation				
timeBodyAccJerkstdZ		time domain, body acceleration Jerk signal for Z axis - standard deviation				
timeBodyGyrostdX		time domain, body gyroscope signal for X axis - standard deviation				
timeBodyGyrostdY		time domain, body gyroscope signal for Y axis - standard deviation				
timeBodyGyrostdZ		time domain, body gyroscope signal for Z axis - standard deviation				
timeBodyGyroJerkstdX		time domain, body gyroscope Jerk signal for X axis - standard deviation				
timeBodyGyroJerkstdY		time domain, body gyroscope Jerk signal for Y axis - standard deviation				
timeBodyGyroJerkstdZ		time domain, body gyroscope Jerk signal for Z axis - standard deviation				
timeBodyAccMagstd		time domain, body acceleration magnitude - standard deviation				
timeGravityAccMagstd		time domain, gravity acceleration magnitude - standard deviation				
timeBodyAccJerkMagstd		time domain, body acceleration Jerk magnitude - standard deviation				
timeBodyGyroMagstd		time domain, body gyroscope magnitude - standard deviation				
timeBodyGyroJerkMagstd		time domain, body gyroscope Jerk magnitude - standard deviation				
freqBodyAccstdX			frequency domain, body acceleration signal for X axis - standard deviation				
freqBodyAccstdY			frequency domain, body acceleration signal for Y axis - standard deviation				
freqBodyAccstdZ			frequency domain, body acceleration signal for Z axis - standard deviation				
freqBodyAccJerkstdX		frequency domain, body acceleration Jerk signal for X axis - standard deviation				
freqBodyAccJerkstdY		frequency domain, body acceleration Jerk signal for Y axis - standard deviation				
freqBodyAccJerkstdZ		frequency domain, body acceleration Jerk signal for Z axis - standard deviation				
freqBodyGyrostdX		frequency domain, body gyroscope signal for X axis - standard deviation				
freqBodyGyrostdY		frequency domain, body gyroscope signal for Y axis - standard deviation				
freqBodyGyrostdZ		frequency domain, body gyroscope signal for Z axis - standard deviation				
freqBodyAccMagstd		frequency domain, body acceleration magnitude - standard deviation				
freqBodyBodyAccJerkMagstd	frequency domain, body acceleration Jerk magnitude - standard deviation				
freqBodyBodyGyroMagstd		frequency domain, body gyroscope magnitude - standard deviation				
freqBodyBodyGyroJerkMagstd	frequency domain, body gyroscope Jerk magnitude - standard deviation				
