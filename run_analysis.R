library(dplyr)

# 1. Merges the training and the test sets to create one data set.

features <- read.table("UCI HAR Dataset/features.txt", col.names = c("featurelabel", "feature"), stringsAsFactors = FALSE)

subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt", col.names = "subject")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt", col.names = "activitylabel")
X_train <- read.table("UCI HAR Dataset/train/X_train.txt", col.names = c(features$feature))

subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt", col.names = "subject")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt", col.names = "activitylabel")
X_test <- read.table("UCI HAR Dataset/test/X_test.txt", col.names = c(features$feature))

traindata <- cbind(subject_train, y_train, X_train)
testdata <- cbind(subject_test, y_test, X_test)
mergedata <- rbind(traindata, testdata)

# 2. Extracts only the measurements on the mean and standard deviation for each measurement.

extractdata <- select(mergedata, subject, activitylabel, matches("mean\\.\\.|std\\.\\.", ignore.case = FALSE))

# 3. Uses descriptive activity names to name the activities in the data set.

activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt", col.names = c("activitylabel", "activity"), stringsAsFactors = FALSE)
joindata <- left_join(activity_labels, extractdata, by = "activitylabel")
completedata <- select(joindata, -activitylabel)

# 4. Appropriately labels the data set with descriptive variable names.

# Done in previous steps

# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

groupdata <- group_by(completedata, activity, subject)
tidydata <- summarise_each(groupdata, funs(mean))
names(tidydata)[-(1:2)] <- paste("average", names(tidydata)[-(1:2)], sep = "")
write.table(tidydata, "tidydata.txt", row.name=FALSE)
