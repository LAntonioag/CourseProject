DATA DICTIONARY - TIDY DATASET
==============================

### INTRODUCTION
==============
The tidy data was generated from two datasets (train and test datasets) each one with his respective data



### PROCESSING DATA DESCRIPTION
=============================
The process is divide into 5 stps, and is done when the dataset is downloaded:

#### 	1. 	Merge the Datasets:
In order to obtaint the tidy dataset, firts we merge the two independent datasets (train and test), each one include a subject and activity data; using the features data as guide in the columns; given as result a raw_data conformed by 563 variables (including the subject and activity datasets) and 10299 observations.

####	2.	Extract the mean and standard deviation for each measurement:
In this step we use regular expresions on the raw_data to extract the given measurement (mean and standard deviation), the result was storaged in tidy_dataset dataset; given as result 68 variables and 10299 observations.

####	3.	Naming the activity variable from the activity_labels names:
Then we use the activity_labels for label the observations in the Activity variable of the tidy_dataset (change the representation from numeric to character); given as result for exmaple "STANDING"

#### 	4.	Appropriately labels the data set with descriptive variable names:
In this step we realize some clean in the variable names; so we remove some "noise" characters like "-" and "()"; for do that we use regular expresions; and assign the result to the tidy_dataset data frame.
		
####	5.	Creating a second, independent tidy data set with the average of each variable for each activity and each subject:
We use the reshape2 library to create a second tidy data set; for do that we firts use the melt function over the tidy_dataset and create a new data using Subject and Activity variables as ID; the result data frame is called data_melt; and using the dcast function we create a new data set from the data_melt that store the mean of each variable according the Subject and Activity variables; this second result is called tidyData; and finally we write the result in a new txt file called "tidyDataSet.txt".




# VARIABLE DESCRIPTION - RESULT
===============================
The follinng is the result of the second file called "tidyDataSet.txt".

Subject 			2
				Subject id in the experiment
					1 ... 30 Unique ID of each subject.

Activity 			XXXX
				Activity perform by the subject
					WALKING
					WALKING_UPSTAIRS
					WALKING_DOWNSTAIRS
					SITTING
					STANDING
					LAYING


tBodyAccmeanX 		
mean of the body linear acceleration in the X axis
[t] - means time captured at a constant rate of 50 Hz

body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ)

tBodyAccmeanY
mean of the body linear acceleration in the X axis


tBodyAccmeanZ
tBodyAccstdX
tBodyAccstdY
tBodyAccstdZ
tGravityAccmeanX
tGravityAccmeanY
tGravityAccmeanZ
tGravityAccstdX
tGravityAccstdY
tGravityAccstdZ
tBodyAccJerkmeanX
tBodyAccJerkmeanY
tBodyAccJerkmeanZ
tBodyAccJerkstdX
tBodyAccJerkstdY
tBodyAccJerkstdZ
tBodyGyromeanX
tBodyGyromeanY
tBodyGyromeanZ
tBodyGyrostdX
tBodyGyrostdY
tBodyGyrostdZ
tBodyGyroJerkmeanX
tBodyGyroJerkmeanY
tBodyGyroJerkmeanZ
tBodyGyroJerkstdX
tBodyGyroJerkstdY
tBodyGyroJerkstdZ
tBodyAccMagmean
tBodyAccMagstd
tGravityAccMagmean
tGravityAccMagstd
tBodyAccJerkMagmean
tBodyAccJerkMagstd
tBodyGyroMagmean
tBodyGyroMagstd
tBodyGyroJerkMagmean
tBodyGyroJerkMagstd
fBodyAccmeanX
fBodyAccmeanY
fBodyAccmeanZ
fBodyAccstdX
fBodyAccstdY
fBodyAccstdZ
fBodyAccJerkmeanX
fBodyAccJerkmeanY
fBodyAccJerkmeanZ
fBodyAccJerkstdX
fBodyAccJerkstdY
fBodyAccJerkstdZ
fBodyGyromeanX
fBodyGyromeanY
fBodyGyromeanZ
fBodyGyrostdX
fBodyGyrostdY
fBodyGyrostdZ
fBodyAccMagmean
fBodyAccMagstd
fBodyBodyAccJerkMagmean
fBodyBodyAccJerkMagstd
fBodyBodyGyroMagmean
fBodyBodyGyroMagstd
fBodyBodyGyroJerkMagmean
fBodyBodyGyroJerkMagstd