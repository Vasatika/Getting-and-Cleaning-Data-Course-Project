#pre-requisite
library(data.table)
library(dplyr)


#STEP 1: Merges the training and the test sets to create one data set------------------------------------

#READING THE DATA
featureNames <- read.table("./data/UCI HAR Dataset/features.txt")
activityLabels <- read.table("./data/UCI HAR Dataset/activity_labels.txt", header = FALSE)

subjectTrain <- read.table("./data/UCI HAR Dataset/train/subject_train.txt", header = FALSE)
activityTrain <- read.table("./data/UCI HAR Dataset/train/y_train.txt", header = FALSE)
featuresTrain <- read.table("./data/UCI HAR Dataset/train/X_train.txt", header = FALSE)

subjectTest <- read.table("./data/UCI HAR Dataset/test/subject_test.txt", header = FALSE)
activityTest <- read.table("./data/UCI HAR Dataset/test/y_test.txt", header = FALSE)
featuresTest <- read.table("./data/UCI HAR Dataset/test/X_test.txt", header = FALSE)

#MERGING INDIVIDUALLY BY SUBJECT, ACTIVITY, AND FEATURES
subject <- rbind(subjectTrain, subjectTest)
activity <- rbind(activityTrain, activityTest)
features <- rbind(featuresTrain, featuresTest)

#ASSIGNING COLUMN NAMES AND FINAL MERGE 
colnames(features) <- t(featureNames[2])
colnames(activity) <- "Activity"
colnames(subject) <- "Subject"
mergedData <- cbind(features,activity,subject)

#STEP 2: Extracts only the measurements on the mean and standard deviation for each measurement----------

MeanSTD <- grep(".*Mean.*|.*Std.*", names(mergedData), ignore.case=TRUE)

requiredColumns <- c(MeanSTD, 562, 563)
dim(mergedData)

mainData <- mergedData[,requiredColumns]
dim(mainData)

#STEP 3: Uses descriptive activity names to name the activities in the data set--------------------------

mainData$Activity <- as.character(mainData$Activity)
for (i in 1:6){
  mainData$Activity[mainData$Activity == i] <- as.character(activityLabels[i,2])
}
mainData$Activity <- as.factor(mainData$Activity)

#STEP 4: Appropriately labels the data set with descriptive variable names-------------------------------
names(mainData)

names(mainData)<-gsub("Acc", "Acclmeter", names(mainData))
names(mainData)<-gsub("Gyro", "Gyroscope", names(mainData))
names(mainData)<-gsub("BodyBody", "Body", names(mainData))
names(mainData)<-gsub("Mag", "Magnitude", names(mainData))
names(mainData)<-gsub("^t", "Time", names(mainData))
names(mainData)<-gsub("^f", "Frequency", names(mainData))
names(mainData)<-gsub("tBody", "TimeBody", names(mainData))
names(mainData)<-gsub("-mean()", "Mean", names(mainData), ignore.case = TRUE)
names(mainData)<-gsub("-std()", "STD", names(mainData), ignore.case = TRUE)
names(mainData)<-gsub("-freq()", "Frequency", names(mainData), ignore.case = TRUE)
names(mainData)<-gsub("angle", "Angle", names(mainData))
names(mainData)<-gsub("gravity", "Gravity", names(mainData))

names(mainData)

#STEP 5: From the data set in STEP 4, creates a second, independent tidy data set with the average of---- 
#--------each variable for each activity and each subject------------------------------------------------

mainData$Subject <- as.factor(mainData$Subject)
mainData <- data.table(mainData)

tidyData <- aggregate(. ~Subject + Activity, mainData, mean)
tidyData <- tidyData[order(tidyData$Subject,tidyData$Activity),]
write.table(tidyData, file = "TidyData.txt", row.names = FALSE)
