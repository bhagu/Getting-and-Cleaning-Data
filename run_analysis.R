#Coursera Project - Getting and Cleaning Data - September 2015 Class
#Done by Bhagyaraj Chitoth

rm(list=ls())
ls()

#Setting up the working directory
setwd("E:/Data Science/Coursera courses/Data Science - Coursera/3 Getting and Cleaning Data/Course Project/UCI HAR Dataset")
getwd()

#Question 1: Merge the training and the test sets to create one data set
features = read.table('features.txt',header=FALSE)
activity = read.table('activity_labels.txt',header=FALSE)

#Reading the training dataset
subject_train = read.table('./train/subject_train.txt',header=FALSE)
x_train = read.table('./train/x_train.txt',header=FALSE)
y_train = read.table('./train/y_train.txt',header=FALSE)

#Reading the testing dataset
subject_test = read.table('./test/subject_test.txt',header=FALSE)
x_test = read.table('./test/x_test.txt',header=FALSE)
y_test = read.table('./test/y_test.txt',header=FALSE)


#Since column names are not assigned to the data set, assigning column names to all of the data tables
colnames(activity) = c("activity_id","activity_name");
#Training Data Set
colnames(subject_train) = "subject_id";
colnames(x_train) = features[,2];
colnames(y_train) = "activity_id";
#Test Data Set
colnames(subject_test) = "subject_id";
colnames(x_test) = features[,2];
colnames(y_test) = "activity_id"

#Combining the training data set
training_data = cbind(y_train,subject_train,x_train)
#Combining the test data set
test_data = cbind(y_test,subject_test,x_test)
#Append the data sets together to make the final raw data
final_rawData = rbind(training_data,test_data)
#The merged data is available in the final_rawData, Question 1 Completed!

#Question 2 : 2.	Extracts only the measurements on the mean and standard deviation for each measurement
final_rawData1 <- final_rawData[, grep("mean|std|activity|subject", names(final_rawData))]
#Confirming that the above method is working properly!
colnames(final_rawData1)
#final_rawData1 has only the data about measurements on the mean and std dev for each measurement

#Question 3: Uses descriptive activity names to name the activities in the data set
final_rawData2 = merge(final_rawData1,activity,by='activity_id',all.x=TRUE);
final_rawData2
#Question 4: Appropriately labels the data set with descriptive variable names. 
#The dataset already has descrirptive column names from the features data (text file provided)

#Question 5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

library(dplyr)
final_rawData3 <- select(final_rawData2,-activity_name)
ind_tidy_data<-aggregate(final_rawData3[,names(final_rawData3) != c('activity_id','subject_id')],by=list(activity_id=final_rawData3$activity_id,subject_id = final_rawData3$subject_id),mean);
tidy_data<-merge(ind_tidy_data,activity,by='activity_id',all.x=TRUE)
#saving the tidy data output to text file
write.table(tidy_data,"tidydata.txt",row.names=FALSE,quote=FALSE)

#Activity Completed!