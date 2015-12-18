
#Getting and Cleaning Data Project


##Data Source

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone.

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 


##Code book

### Original dataset information
For the purpose of this project following files of the raw dataset were used - 
1. X_test.txt
  This file contains the test dataset.
2. X_train.txt
  This file contains the training dataset.
3. subject_train.txt
  This file contains information about each subject who performed the activity for each window sample. There are a total of 30 subjects that are identified by numbers 1 to 30 in this file.
4. subject_test.txt
  This file contains information about each subject who performed the activity for each window sample. There are a total of 30 subjects that are identified by numbers 1 to 30 in this file.
5. y_test.txt
  This file contains the test labels for the activity that the subjects performed.
6. y_train.txt
  This file contains the training labels for the activity that the subjecs performed.
7. activity_labels
  This file links the class labels with their activity name.
8. features.txt
  This file shows information about the variables used on the feature vector.

The entire dataset contains 563 variables.

### Subset used for analysis
The original dataset was subsetted to include only the measurements on the mean and standard deviation for each measurement.

### Analysis

After subsetting the original dataset, the dataset for analysis contains 88 variables.

**Each variable in the sub-setted dataset is a numeric vector.**

Steps to run analysis on the sub-setted dataset -

- Read training and test datasets
- Read subject data
- Read all labels (activity, test and training)
- Rename columns in subject data and labels data appropriately
- Merge all labels with training and test data
- Rename numberic label values to meaningful descriptive names
- Merge test and training datasets
- Extract only the measurements on mean and standard deviation
- Rename columns appropriately
- Duplicate the dataset
- Using the duplicated dataset, find average of each variable for each activity and each subject
- Store resulting data into tidy.data object
- Save tidy.data to a file using write.table function


### Code book

Two variables have been introduced in the final tidy dataset - activityName (factor with 6 levels) and subjectId (integer vector)

Following is a list of all the variables present in the final tidy dataset - 

-	activityName
-	subjectId
-	tBodyAcc-mean()-X
-	tBodyAcc-mean()-Y
-	tBodyAcc-mean()-Z
-	tGravityAcc-mean()-X
-	tGravityAcc-mean()-Y
-	tGravityAcc-mean()-Z
-	tBodyAccJerk-mean()-X
-	tBodyAccJerk-mean()-Y
-	tBodyAccJerk-mean()-Z
-	tBodyGyro-mean()-X
-	tBodyGyro-mean()-Y
-	tBodyGyro-mean()-Z
-	tBodyGyroJerk-mean()-X
-	tBodyGyroJerk-mean()-Y
-	tBodyGyroJerk-mean()-Z
-	tBodyAccMag-mean()
-	tGravityAccMag-mean()
-	tBodyAccJerkMag-mean()
-	tBodyGyroMag-mean()
-	tBodyGyroJerkMag-mean()
-	fBodyAcc-mean()-X
-	fBodyAcc-mean()-Y
-	fBodyAcc-mean()-Z
-	fBodyAcc-meanFreq()-X
-	fBodyAcc-meanFreq()-Y
-	fBodyAcc-meanFreq()-Z
-	fBodyAccJerk-mean()-X
-	fBodyAccJerk-mean()-Y
-	fBodyAccJerk-mean()-Z
-	fBodyAccJerk-meanFreq()-X
-	fBodyAccJerk-meanFreq()-Y
-	fBodyAccJerk-meanFreq()-Z
-	fBodyGyro-mean()-X
-	fBodyGyro-mean()-Y
-	fBodyGyro-mean()-Z
-	fBodyGyro-meanFreq()-X
-	fBodyGyro-meanFreq()-Y
-	fBodyGyro-meanFreq()-Z
-	fBodyAccMag-mean()
-	fBodyAccMag-meanFreq()
-	fBodyBodyAccJerkMag-mean()
-	fBodyBodyAccJerkMag-meanFreq()
-	fBodyBodyGyroMag-mean()
-	fBodyBodyGyroMag-meanFreq()
-	fBodyBodyGyroJerkMag-mean()
-	fBodyBodyGyroJerkMag-meanFreq()
-	angle(tBodyAccMean,gravity)
-	angle(tBodyAccJerkMean),gravityMean)
-	angle(tBodyGyroMean,gravityMean)
-	angle(tBodyGyroJerkMean,gravityMean)
-	angle(X,gravityMean)
-	angle(Y,gravityMean)
-	angle(Z,gravityMean)
-	tBodyAcc-std()-X
-	tBodyAcc-std()-Y
-	tBodyAcc-std()-Z
-	tGravityAcc-std()-X
-	tGravityAcc-std()-Y
-	tGravityAcc-std()-Z
-	tBodyAccJerk-std()-X
-	tBodyAccJerk-std()-Y
-	tBodyAccJerk-std()-Z
-	tBodyGyro-std()-X
-	tBodyGyro-std()-Y
-	tBodyGyro-std()-Z
-	tBodyGyroJerk-std()-X
-	tBodyGyroJerk-std()-Y
-	tBodyGyroJerk-std()-Z
-	tBodyAccMag-std()
-	tGravityAccMag-std()
-	tBodyAccJerkMag-std()
-	tBodyGyroMag-std()
-	tBodyGyroJerkMag-std()
-	fBodyAcc-std()-X
-	fBodyAcc-std()-Y
-	fBodyAcc-std()-Z
-	fBodyAccJerk-std()-X
-	fBodyAccJerk-std()-Y
-	fBodyAccJerk-std()-Z
-	fBodyGyro-std()-X
-	fBodyGyro-std()-Y
-	fBodyGyro-std()-Z
-	fBodyAccMag-std()
-	fBodyBodyAccJerkMag-std()
-	fBodyBodyGyroMag-std()
-	fBodyBodyGyroJerkMag-std()
