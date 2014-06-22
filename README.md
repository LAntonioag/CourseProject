Introduction
=============
The script perform a merge over two datasets [Test and Train datasets],  after that create a new tity dataset that contain only the mean and standard deviation of each observation; based in subject and activity.

Enviroment Information
======================
This script was tested in Windows 8; for other operative systems the use of "/" character for move across directories maybe not work.

Script process description - run_analysis.R
===================================
The scripts take 8 steps in order to obtain the tidy dataset, this steps are:

#### 	1. 	Download the Datasets:
Using the download.file function the script download the database from this url: <https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>; and unzip it in the current working directory.

####	2.	Set the work directory:
Here the we save the current working directory in a variable called "dir", because at the end we will be write the final output there, and change to the unzip directory where the files are (in the "UCI HAR Dataset" directory).

####	3.	Reading the files:
In this step the require files are read and load for the processing, and are stored into local varibles with the same names; this files are:
- Test files:
	- X_test.txt
	- y_test.txt
	- subject_test.txt

- Train files:
	- X_train.txt
	- y_train.txt
	- subject_train.txt

- Features file
	- "features.txt

- Activity label file:
	- activity_labels.txt

####	4.	Combine and merge [train and test] the datasets:
First we merge using the rbind function the datasets in the follwing form:
- x_data dataset:
	- Obtaing from merging the train_x and test_x datasets.

- Subject dataset:
	- Obtaing from merging the subject_train and subject_test datasets.

- Activity dataset:
	- Obtaing from merging the train_y and test_y datasets.

After combine the 3 datasets, we create a new dataframe called raw_data; that is compouse from:
- raw_data dataset:
	- Obtaing from merging the x_data, subject and activity datasets.

And using the features dataset we change the name of the variables in the raw_data set in order to process it later.

####	5. Extracts the measurements on the mean and standard deviation
In this step we use the grep function to extract only the mean() and std() variables from the raw_data, and the result is storaged in a new data frame called tidy_dataset.

####	6. Apply descriptive activity names to name the activities
Using the labels from the activity_labels we change the representation of the activity from numeric to character; and apply to all the observations in the tidy_dataset.

#### 	7.	Appropriately labels the data set with descriptive variable names:
In this step we realize some clean in the variable names; so we remove some "noise" characters like "-" and "()"; for do that we use gsub function for remove that characters from the tidy_dataset data frame.
		
####	8.	Creating a second, independent tidy data set with the average of each variable for each activity and each subject:
We use the reshape2 library to create a second tidy data set; for do that we firts use the melt function over the tidy_dataset and create a new data using Subject and Activity variables as ID; the result data frame is called data_melt; and using the dcast function we create a new data set from the data_melt that store the mean of each variable according the Subject and Activity variables; this second result is called tidyData; and finally we write the result in a new txt file called "tidyDataSet.txt".