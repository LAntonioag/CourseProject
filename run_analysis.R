# Donwload the Dataset ----------------------------------------------------
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
              paste(getwd(),"/dataset.zip",sep=""))
unzip("dataset.zip")

# Set the work directory --------------------------------------------------
root_dir <-getwd()
work_dir <-paste(getwd(),"/UCI HAR Dataset",sep="")
setwd(work_dir)


# Read the files
test_dir <- paste(work_dir,"/test",sep="")
setwd(test_dir)
# Read the Test files
test_x <- read.table("X_test.txt")
test_y <- read.table("y_test.txt")
subject_test <- read.table("subject_test.txt")

# Read the Train files
train_dir <- paste(work_dir,"/train",sep="")
setwd(train_dir)
train_x <- read.table("X_train.txt")
train_y <- read.table("y_train.txt")
subject_train <- read.table("subject_train.txt")

# Read the features file
setwd(work_dir)
features <- read.table("features.txt")

# Read the activity_labels file
setwd(work_dir)
activity_labels <- read.table("activity_labels.txt")
activity_labels[,2] <- as.character(activity_labels[,2])
# Combine the two DataSets
#x_data <- merge(train_x,test_x,by.x=names(train_x),by.y=names(test_x),all=TRUE)
#subject <-  merge(subject_train,subject_test,by.x=names(subject_train),by.y=names(subject_test),all=TRUE)

x_data <- rbind(train_x,test_x)
subject <-  rbind(subject_train,subject_test)
activity <- rbind(train_y, test_y)


## Merging the Test and Train DataSets
raw_data <- data.frame(x_data, subject, activity)

# Label the Data Sets

names_data <- c(as.character(features[,2]), "Subject","Activity")
names(raw_data) = names_data

# 2. Extracts the measurements on the mean and standard deviation  --------
# Get the specific columns with the grep command 81
# index_list <- grep("(.*)(mean(.*)|std(.*)|Subject|Activity)(.*)", names(raw_data))
# Get 68 Variables
index_list <- grep("(.*)(-mean[()]|-std[()])|(Subject|Activity)", names(raw_data))

# Then subset the dataset
raw_data <- raw_data[,c(index_list)]

# For 68 Variables
# 3. Uses descriptive activity names to name the activities  --------------
raw_data[,68] <- as.character(raw_data[,68])

for (k in c(1:dim(raw_data)[1])) {
    switch(EXPR = raw_data[k,68],
           "1" = (raw_data[k,68] <- activity_labels[1,2]),
           "2" = (raw_data[k,68] <- activity_labels[2,2]),
           "3" = (raw_data[k,68] <- activity_labels[3,2]),
           "4" = (raw_data[k,68] <- activity_labels[4,2]),
           "5" = (raw_data[k,68] <- activity_labels[5,2]), 
           "6" = (raw_data[k,68] <- activity_labels[6,2])
    )
}

# Remove Noise characters "() and -"
# gsub("(-|[()])", "", "fBodyGyro-std()-X")


# 4. Appropriately labels the data set with descriptive variable n --------

names_list <- names(raw_data)
# gsub("(-|[()])", "", names_list)
names(raw_data) <- gsub("(-|[()])", "", names_list)

# First apply the melt function [for 68 variables]
library(reshape2) # Load the reshape2 library
data_melt <- melt(raw_data, id=c("Subject", "Activity"),measure.vars=names(raw_data)[-c(67,68)])

# And Finally get the mean for each Subject - activity
tidyData <- dcast(data_melt,Subject + Activity ~ variable,mean)
setwd(root_dir)

write.table(tidyData,"tidyDataSet.txt")
