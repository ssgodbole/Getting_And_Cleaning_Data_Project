#Getting and Cleaning Data Project


##Data Source

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone.

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The original dataset contains 563 variables.

## Analysis

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

## How to use this project?
- Set your working directory in RStudio (or another tool) to point to this project
- All data files have been placed in this project already, so you don't need to download them
- Run the code in "run_analysis.R"
- A tidy dataset will be placed in this project as a text file