# Code Book

## Data
There are 180 observations of 68 variables in tidydata.txt. Each observation shows the average of each variable for each activity and each subject.

## Variables
### activity
Description: Activity performed by each subject. There are 6 activities listed below.
* WALKING
* WALKING_UPSTAIRS
* WALKING_DOWNSTAIRS
* SITTING
* STANDING
* LAYING

### subject
Description: Subject who performed the activity for each window sample. Its range is from 1 to 30.

### average + "feature"
Description: The average of the mean or standard deviation for each feature measurement. There are 66 of such variables listed below. Each variable name is a combination of "average" and the respective feature measurement.
* averagetBodyAcc.mean...X
* averagetBodyAcc.mean...Y
* averagetBodyAcc.mean...Z
* averagetBodyAcc.std...X
* averagetBodyAcc.std...Y
* averagetBodyAcc.std...Z
* averagetGravityAcc.mean...X
* averagetGravityAcc.mean...Y
* averagetGravityAcc.mean...Z
* averagetGravityAcc.std...X
* averagetGravityAcc.std...Y
* averagetGravityAcc.std...Z
* averagetBodyAccJerk.mean...X
* averagetBodyAccJerk.mean...Y
* averagetBodyAccJerk.mean...Z
* averagetBodyAccJerk.std...X
* averagetBodyAccJerk.std...Y
* averagetBodyAccJerk.std...Z
* averagetBodyGyro.mean...X
* averagetBodyGyro.mean...Y
* averagetBodyGyro.mean...Z
* averagetBodyGyro.std...X
* averagetBodyGyro.std...Y
* averagetBodyGyro.std...Z
* averagetBodyGyroJerk.mean...X
* averagetBodyGyroJerk.mean...Y
* averagetBodyGyroJerk.mean...Z
* averagetBodyGyroJerk.std...X
* averagetBodyGyroJerk.std...Y
* averagetBodyGyroJerk.std...Z
* averagetBodyAccMag.mean..
* averagetBodyAccMag.std..
* averagetGravityAccMag.mean..
* averagetGravityAccMag.std..
* averagetBodyAccJerkMag.mean..
* averagetBodyAccJerkMag.std..
* averagetBodyGyroMag.mean..
* averagetBodyGyroMag.std..
* averagetBodyGyroJerkMag.mean..
* averagetBodyGyroJerkMag.std..
* averagefBodyAcc.mean...X
* averagefBodyAcc.mean...Y
* averagefBodyAcc.mean...Z
* averagefBodyAcc.std...X
* averagefBodyAcc.std...Y
* averagefBodyAcc.std...Z
* averagefBodyAccJerk.mean...X
* averagefBodyAccJerk.mean...Y
* averagefBodyAccJerk.mean...Z
* averagefBodyAccJerk.std...X
* averagefBodyAccJerk.std...Y
* averagefBodyAccJerk.std...Z
* averagefBodyGyro.mean...X
* averagefBodyGyro.mean...Y
* averagefBodyGyro.mean...Z
* averagefBodyGyro.std...X
* averagefBodyGyro.std...Y
* averagefBodyGyro.std...Z
* averagefBodyAccMag.mean..
* averagefBodyAccMag.std..
* averagefBodyBodyAccJerkMag.mean..
* averagefBodyBodyAccJerkMag.std..
* averagefBodyBodyGyroMag.mean..
* averagefBodyBodyGyroMag.std..
* averagefBodyBodyGyroJerkMag.mean..
* averagefBodyBodyGyroJerkMag.std..

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

* mean(): Mean value
* std(): Standard deviation

## Transformations or work performed to clean up the data

1. Merge the training and the test sets to create one data set.
2. Extract only the measurements on the mean and standard deviation for each measurement.
3. Use descriptive activity names to name the activities in the data set.
4. Appropriately label the data set with descriptive variable names.
5. From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.
