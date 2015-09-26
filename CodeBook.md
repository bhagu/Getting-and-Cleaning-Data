#Getting and Cleaning Data

This Codebook is to help you understand about the variables used in the "run_analysis.R" program as part of the Gettingn and Cleaning Data Coursera Course.

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

final_rawData1 - Resultant dataset after extracting only the measurements on the mean and standard deviation for each measurement from final_rawData

final_rawData2 - After using descriptive activity names to name the activities in the data set final_rawData1

tidy_data - the final independent tidy data set with the average of each variable for each activity and each subject.
