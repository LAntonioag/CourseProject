DATA DICTIONARY - TIDY DATASET
==============================

### INTRODUCTION
==============
The tidy data was generated from two datasets (train and test datasets) each one with his respective data; the original dataset was downloaded from <https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>



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


### VARIABLE DESCRIPTION - RESULT
=================================
The follinng is the result of the second file called "tidyDataSet.txt".


Variable Name | Length | Label | Values
------------- | -------|-------|-------
Subject|2|Subject id in the experiment|1 ... 30 Unique ID of each subject
Activity|18|Activity perform by the subject|WALKING, WALKING_UPSTAIRS, 	WALKING_DOWNSTAIRS, SITTING, STANDING, 	LAYING
tBodyAccmeanX|10|Mean of the body linear acceleration in the X axis with a low pass Butterworth filter with a corner frequency of 0.3 Hz.|0.00000001 to 0.99999999
tBodyAccmeanY|10|Mean of the body linear acceleration in the Y axis with a low pass Butterworth filter with a corner frequency of 0.3 Hz|0.00000001 to 0.99999999
tBodyAccmeanZ|10|Mean of the body linear acceleration in the Z axis with a low pass Butterworth filter with a corner frequency of 0.3 Hz.|0.00000001 to 0.99999999
tBodyAccstdX|10|Standard deviation of the body linear acceleration in the X axis with a low pass Butterworth filter with a corner frequency of 0.3 Hz.|0.00000001 to 0.99999999
tBodyAccstdY|10|Standard deviation of the body linear acceleration in the Y axis with a low pass Butterworth filter with a corner frequency of 0.3 Hz.|0.00000001 to 0.99999999
tBodyAccstdZ|10|Standard deviation of the body linear acceleration in the Z axis with a low pass Butterworth filter with a corner frequency of 0.3 Hz.|0.00000001 to 0.99999999
tGravityAccmeanX|10|Mean of the gravity acceleration in the X axis with a low pass Butterworth filter with a corner frequency of 0.3 Hz.|0.00000001 to 0.99999999
tGravityAccmeanY|10|Mean of the gravity acceleration in the Y axis with a low pass Butterworth filter with a corner frequency of 0.3 Hz.|0.00000001 to 0.99999999
tGravityAccmeanZ|10|Mean of the gravity acceleration in the Z axis with a low pass Butterworth filter with a corner frequency of 0.3 Hz.|0.00000001 to 0.99999999
tGravityAccstdX|10|Standard deviation  of the gravity acceleration in the X axis with a low pass Butterworth filter with a corner frequency of 0.3 Hz.|0.00000001 to 0.99999999
tGravityAccstdY|10|Standard deviation  of the gravity acceleration in the Y axis with a low pass Butterworth filter with a corner frequency of 0.3 Hz.|0.00000001 to 0.99999999
tGravityAccstdZ|10|Standard deviation  of the gravity acceleration in the Z axis with a low pass Butterworth filter with a corner frequency of 0.3 Hz.|0.00000001 to 0.99999999
tBodyAccJerkmeanX|10|Mean of the Jerk measure in the X axis|0.00000001 to 0.99999999
tBodyAccJerkmeanY|10|Mean of the Jerk measure in the Y axis|0.00000001 to 0.99999999
tBodyAccJerkmeanZ|10|Mean of the Jerk measure in the Z axis|0.00000001 to 0.99999999
tBodyAccJerkstdX|10|Standard deviation of the Jerk measure in the X axis|0.00000001 to 0.99999999
tBodyAccJerkstdY|10|Standard deviation of the Jerk measure in the Y axis|0.00000001 to 0.99999999
tBodyAccJerkstdZ|10|Standard deviation of the Jerk measure in the Z axis|0.00000001 to 0.99999999
tBodyGyromeanX|10|Mean of the angular velocity in the X axis|0.00000001 to 0.99999999
tBodyGyromeanY|10|Mean of the angular velocity in the Y axis|0.00000001 to 0.99999999
tBodyGyromeanZ|10|Mean of the angular velocity in the Z axis|0.00000001 to 0.99999999
tBodyGyrostdX|10|Standard deviation of the angular velocity in the X axis|0.00000001 to 0.99999999
tBodyGyrostdY|10|Standard deviation of the angular velocity in the Y axis|0.00000001 to 0.99999999
tBodyGyrostdZ|10|Standard deviation of the angular velocity in the Z axis|0.00000001 to 0.99999999
tBodyGyroJerkmeanX|10|Mean of the angular velocity in the X axis for the Jerk signal|0.00000001 to 0.99999999
tBodyGyroJerkmeanY|10|Mean of the angular velocity in the Y axis for the Jerk signal|0.00000001 to 0.99999999
tBodyGyroJerkmeanZ|10|Mean of the angular velocity in the Z axis for the Jerk signal|0.00000001 to 0.99999999
tBodyGyroJerkstdX|10|Standard deviation  of the angular velocity in the X axis for the Jerk signal|0.00000001 to 0.99999999
tBodyGyroJerkstdY|10|Standard deviation  of the angular velocity in the Y axis for the Jerk signal|0.00000001 to 0.99999999
tBodyGyroJerkstdZ|10|Standard deviation  of the angular velocity in the Z axis for the Jerk signal|0.00000001 to 0.99999999
tBodyAccMagmean|10|Mean of the body linear acceleration in for the Jerk signal|0.00000001 to 0.99999999
tBodyAccMagstd|10|Standard deviation of the body linear accelerationin for the Jerk signal|0.00000001 to 0.99999999
tGravityAccMagmean|10|Mean of the  angular velocityfor the Jerk signal|0.00000001 to 0.99999999
tGravityAccMagstd|10|Standard deviation of the  angular velocityfor the Jerk signal|0.00000001 to 0.99999999
tBodyAccJerkMagmean|10|Mean of the  linear acceleration for the Jerk signal|0.00000001 to 0.99999999
tBodyAccJerkMagstd|10|Standard deviation of the  linear acceleration for the Jerk signal|0.00000001 to 0.99999999
tBodyGyroMagmean|10|Mean of the  linear acceleration for the Jerk signal|0.00000001 to 0.99999999
tBodyGyroMagstd|10|Standard deviation of the angular velocity for the Jerk signal|0.00000001 to 0.99999999
tBodyGyroJerkMagmean|10|Mean of the  linear acceleration for the Jerk signal|0.00000001 to 0.99999999
tBodyGyroJerkMagstd|10|Standard deviation of the angular velocity for the Jerk signal|0.00000001 to 0.99999999
fBodyAccmeanX|10|Mean of the Fast Fourier Transform in the body linear acceleration in the X axis.|0.00000001 to 0.99999999
fBodyAccmeanY|10|Mean of the Fast Fourier Transform in the body linear acceleration in the Y axis.|0.00000001 to 0.99999999
fBodyAccmeanZ|10|Mean of the Fast Fourier Transform in the body linear acceleration in the Z axis.|0.00000001 to 0.99999999
fBodyAccstdX|10|Standard deviation of the Fast Fourier Transform in the body linear acceleration in the X axis.|0.00000001 to 0.99999999
fBodyAccstdY|10|Standard deviation of the Fast Fourier Transform in the body linear acceleration in the Y axis.|0.00000001 to 0.99999999
fBodyAccstdZ|10|Standard deviation of the Fast Fourier Transform in the body linear acceleration in the Z axis.|0.00000001 to 0.99999999
fBodyAccJerkmeanX|10|Mean of the Jerk measure for acceleration in the X axis|0.00000001 to 0.99999999
fBodyAccJerkmeanY|10|Mean of the Jerk measure for acceleration in the Y axis|0.00000001 to 0.99999999
fBodyAccJerkmeanZ|10|Mean of the Jerk measure for acceleration in the Z axis|0.00000001 to 0.99999999
fBodyAccJerkstdX|10|Standard deviation of the Jerk measure for acceleration in the X axis|0.00000001 to 0.99999999
fBodyAccJerkstdY|10|Standard deviation of the Jerk measure for acceleration in the Y axis|0.00000001 to 0.99999999
fBodyAccJerkstdZ|10|Standard deviation of the Jerk measure for acceleration in the Z axis|0.00000001 to 0.99999999
fBodyGyromeanX|10|Mean of the Fast Fourier Transform of the agular velocity in the X axis|0.00000001 to 0.99999999
fBodyGyromeanY|10|Mean of the Fast Fourier Transform of the agular velocity in the Y axis|0.00000001 to 0.99999999
fBodyGyromeanZ|10|Mean of the Fast Fourier Transform of the agular velocity in the Z axis|0.00000001 to 0.99999999
fBodyGyrostdX|10|Standard deviation of the Fast Fourier Transform of the agular velocity in the X axis|0.00000001 to 0.99999999
fBodyGyrostdY|10|Standard deviation of the Fast Fourier Transform of the agular velocity in the Y axis|0.00000001 to 0.99999999
fBodyGyrostdZ|10|Standard deviation of the Fast Fourier Transform of the agular velocity in the Z axis|0.00000001 to 0.99999999
fBodyAccMagmean|10|Mean of the Fast Fourier Transform of acceleration for the jerk measure|0.00000001 to 0.99999999
fBodyAccMagstd|10|Standard deviation of the Fast Fourier Transform of acceleration for the jerk measure|0.00000001 to 0.99999999
fBodyBodyAccJerkMagmean|10|Mean of the Fast Fourier Transform of angular velocity for the jerk measure|0.00000001 to 0.99999999
fBodyBodyAccJerkMagstd|10|Standard deviation of the Fast Fourier Transform of angular velocity for the jerk measure|0.00000001 to 0.99999999
fBodyBodyGyroMagmean|10|Mean of the Fast Fourier Transform of angular velocity for the jerk measure|0.00000001 to 0.99999999
fBodyBodyGyroMagstd|10|Standard deviation of the Fast Fourier Transform of angular velocoty|0.00000001 to 0.99999999
fBodyBodyGyroJerkMagmean|10|Meanof the Fast Fourier Transform of angular velocity for the jerk measure|0.00000001 to 0.99999999
fBodyBodyGyroJerkMagstd|10|Standard deviation of the Fast Fourier Transform of angular velocity for the jerk measure|0.00000001 to 0.99999999