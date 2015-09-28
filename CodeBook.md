#Getting and Cleaning Data

##Data Source
The Data used for the project can be downloaded from the link mentioned below.
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

  The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

  The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

##Project Tasks

- Merges the training and the test sets to create one data set
- Extracts only the measurements on the mean and standard deviation for each measurement
- Uses descriptive activity names to name the activities in the data set
- Appropriately labels the data set with descriptive variable names 
- From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

###Task 1 - Merge the training and the test sets to create one data set

Remove objects from the current environment as a best practice. 
Set the source directory for this activity.
Bring in the data to R tables. (We would be bringinging in the Testing and Training datasets with Features and activity details)

Files we need for this activity are mentioned below.
Training Details
 - subject_train.txt
 - x_train.txt
 - y_train.txt
Testing Details
 -	subject_test.txt
 -	x_test.txt
 -	y_test.txt

and features.Txt and activity_labels.txt as well.

To Merge the training and testing dataset, first assign column names to the tables (to ensure that the merging is happening as per the requirement - naming helps in resolving confusion. After this, merge the 2 datasets.

######Variables used for this activity
features - List of all features
activity - Links the class labels with their activity name

Training Data
subject_train - Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
x_train - Training set
y_train - Training labels

Testing Data
subject_test - Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
x_test - Test set
y_test - Test labels

training_data - Result of combining the 3 training data tables
test_data - Result of combining the 3 test data tables

final_rawData - Result of Merging the Training and Test Datasets

###Task 2 - Extracts only the measurements on the mean and standard deviation for each measurement

Using the grep command, filter the columns where we have mean and stddev in it

######Variables used for this activity
final_rawData1 - Resultant dataset after extracting only the measurements on the mean and standard deviation for each measurement from final_rawData

###Task 3 - Uses descriptive activity names to name the activities in the data set

Use the activity type table for this activity(by using Merge)

######Variables used for this activity
final_rawData2 - After using descriptive activity names to name the activities in the data set final_rawData1

###Task 4 - Appropriately labels the data set with descriptive variable names 

This has already been accomplished during step 1 as part of best practices.

###Task 5 - From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject

Use aggregate to compute the summary statistics, in this case the Mean and save the resulting "TidyData" to a text file.

######Variables used for this activity
tidy_data - the final independent tidy data set with the average of each variable for each activity and each subject.

#####Fields available in the output:

 - activity_id
 - subject_id
 - activity_name
 - tBodyAcc-mean()-X
 - tBodyAcc-mean()-Y
 - tBodyAcc-mean()-Z
 - tBodyAcc-std()-X
 - tBodyAcc-std()-Y
 - tBodyAcc-std()-Z
 - tGravityAcc-mean()-X
 - tGravityAcc-mean()-Y
 - tGravityAcc-mean()-Z
 - tGravityAcc-std()-X
 - tGravityAcc-std()-Y
 - tGravityAcc-std()-Z
 - tBodyAccJerk-mean()-X
 - tBodyAccJerk-mean()-Y
 - tBodyAccJerk-mean()-Z
 - tBodyAccJerk-std()-X
 - tBodyAccJerk-std()-Y
 - tBodyAccJerk-std()-Z
 - tBodyGyro-mean()-X
 - tBodyGyro-mean()-Y
 - tBodyGyro-mean()-Z
 - tBodyGyro-std()-X
 - tBodyGyro-std()-Y
 - tBodyGyro-std()-Z
 - tBodyGyroJerk-mean()-X
 - tBodyGyroJerk-mean()-Y
 - tBodyGyroJerk-mean()-Z
 - tBodyGyroJerk-std()-X
 - tBodyGyroJerk-std()-Y
 - tBodyGyroJerk-std()-Z
 - tBodyAccMag-mean()
 - tBodyAccMag-std()
 - tGravityAccMag-mean()
 - tGravityAccMag-std()
 - tBodyAccJerkMag-mean()
 - tBodyAccJerkMag-std()
 - tBodyGyroMag-mean()
 - tBodyGyroMag-std()
 - tBodyGyroJerkMag-mean()
 - tBodyGyroJerkMag-std()
 - fBodyAcc-mean()-X
 - fBodyAcc-mean()-Y
 - fBodyAcc-mean()-Z
 - fBodyAcc-std()-X
 - fBodyAcc-std()-Y
 - fBodyAcc-std()-Z
 - fBodyAcc-meanFreq()-X
 - fBodyAcc-meanFreq()-Y
 - fBodyAcc-meanFreq()-Z
 - fBodyAccJerk-mean()-X
 - fBodyAccJerk-mean()-Y
 - fBodyAccJerk-mean()-Z
 - fBodyAccJerk-std()-X
 - fBodyAccJerk-std()-Y
 - fBodyAccJerk-std()-Z
 - fBodyAccJerk-meanFreq()-X
 - fBdyAccJerk-meanFreq()-Y
 - fBodyAccJerk-meanFreq()-Z
 - fBodyGyro-mean()-X
 - fBodyGyro-mean()-Y
 - fBodyGyro-mean()-Z
 - fBodyGyro-std()-X
 - fBodyGyro-std()-Y
 - fBodyGyro-std()-Z
 - fBodyGyro-meanFreq()-X
 - fBodyGyro-meanFreq()-Y
 - fBodyGyro-meanFreq()-Z
 - fBodyAccMag-mean()
 - fBodyAccMag-std()
 - fBodyAccMag-meanFreq()
 - fBodyBodyAccJerkMag-mean()
 - fBodyBodyAccJerkMag-std()
 - fBodyBodyAccJerkMag-meanFreq()
 - fBodyBodyGyroMag-mean()
 - fBodyBodyGyroMag-std()
 - fBodyBodyGyroMag-meanFreq()
 - fBodyBodyGyroJerkMag-mean()
 - fBodyBodyGyroJerkMag-std()
 - fBodyBodyGyroJerkMag-meanFreq()

#####License Information : (for the dataset used in this activity)
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
