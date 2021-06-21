#pre-requisite
library(data.table)
library(dplyr)


#STEP 1: Merges the training and the test sets to create one data set-----------------------------------------------------------------

#READING THE DATA
features <- read.table("./data/UCI HAR Dataset/features.txt")
activity_labels <- read.table("./data/UCI HAR Dataset/activity_labels.txt", header = FALSE)

subject_rain <- read.table("./data/UCI HAR Dataset/train/subject_train.txt", header = FALSE)
Y_train <- read.table("./data/UCI HAR Dataset/train/y_train.txt", header = FALSE)
X_train <- read.table("./data/UCI HAR Dataset/train/X_train.txt", header = FALSE)

subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt", header = FALSE)
Y_test <- read.table("./data/UCI HAR Dataset/test/y_test.txt", header = FALSE)
X_test <- read.table("./data/UCI HAR Dataset/test/X_test.txt", header = FALSE)

#MERGING INDIVIDUALLY BY SUBJECT, ACTIVITY, AND FEATURES
subjectTestTrain <- rbind(subject_train, subject_test)
activityXY <- rbind(Y_train, Y_test)
featuresXY <- rbind(X_train, X_test)

#STEP 2: Extracts only the measurements on the mean and standard deviation for each measurement---------------------------------------
#STEP 3: Uses descriptive activity names to name the activities in the data set-------------------------------------------------------
#STEP 4: Appropriately labels the data set with descriptive variable names------------------------------------------------------------
names(features) <- c('FeatureID', 'FeatureName')
MeanStdDev <- grepl("-mean\\(\\)|-std\\(\\)", features$FeatureName)
featuresXY <- featuresXY[,MeanStdDev]
names(featuresXY) <- gsub("\\(|\\)", "", (features[MeanStdDev, 2]))

names(activity_labels) <- c('ActivityID', 'ActivityName')
activityXY[, 1] <- activity_labels[activityXY[,1],2]

names(activityXY) = "Activity"
names(subjectTestTrain) = "Subject"

#MERGE BY COLUMN THE ACTIVITIES, SUBJECTS, AND FEATURES
allMerge <- cbind(subjectTestTrain, activityXY, featuresXY)

#STEP 5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each--------- 
#       activity and each subject-----------------------------------------------------------------------------------------------------

TidyData <- aggregate(allMerge[,3:dim(allMerge)[2]], list(allMerge$Subject, allMerge$Activity), mean)
names(TidyData)[1] <- "Subjects"
names(TidyData)[2] <- "Activities"

write.table(TidyData, "TidiedData.txt", sep = "", row.names = FALSE)
