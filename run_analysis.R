
# Extract test and training data sets
testData <- read.table("./test/X_test.txt")
trainingData <- read.table("./train/X_train.txt")

# Read subject data
subjectTrainData <- read.table("./train/subject_train.txt")
subjectTestData <- read.table("./test/subject_test.txt")

# Rename subject column
colnames(subjectTrainData) <- "subjectId"
colnames(subjectTestData) <- "subjectId"

# Read all labels
testLabels <- read.table("./test/y_test.txt")
trainLabels <- read.table("./train/y_train.txt")
activityLabels <- read.table("./activity_labels.txt")

# Rename labels column
colnames(testLabels) <- "activityName"
colnames(trainLabels) <- "activityName"

# Add test and training activity labels (numeric)
testData <- cbind(testLabels, subjectTestData, testData)
trainingData <- cbind(trainLabels, subjectTrainData, trainingData)

# Convert numeric activity labels to descriptive labels
testData$activityName <- sapply(testData$activityName, function(x) {
  x <- activityLabels[activityLabels$V1 == x, 2]
})

trainingData$activityName <- sapply(trainingData$activityName, function(x) {
  x <- activityLabels[activityLabels$V1 == x, 2]
})

# Merge test and training data sets
fullDataset <- rbind(testData, trainingData)

# Read mean and std features
features <- read.table("./features.txt")
mean1Features <- features[grep("mean", features$V2, ignore.case = FALSE), ]
mean2Features <- features[grep("Mean", features$V2, ignore.case = FALSE), ]
meanFeatures <- rbind(mean1Features, mean2Features)
stdFeatures <- features[grep("std", features$V2, ignore.case = FALSE), ]

# Merge all rows
merged <- rbind(meanFeatures, stdFeatures)

# Attach V to all numbers
tomatch <- sapply(merged$V1, function(x) {paste("V",x, sep = "")})

# Extract only mean and std measurements from full dataset
fullDataset <- fullDataset[, names(fullDataset) %in%  c("activityName", "subjectId", tomatch)]

# Rename columns of dataset to descriptive column names from features
colnames(fullDataset) <- c("activityName", "subjectId", as.character(merged$V2))

# Find mean of each variable by subject and by activity
tidy.data <- aggregate(fullDataset, by = list(fullDataset$activityName, fullDataset$subjectId), mean)

# Remove unwanted columns
tidy.data$activityName <- NULL
tidy.data$subjectId <- NULL

# Rename grouped columns
colnames(tidy.data)[1] <- "activityName"
colnames(tidy.data)[2] <- "subjectId"

# Write dataset to file
write.table(tidy.data, "./tidyData.txt", row.names = FALSE)
