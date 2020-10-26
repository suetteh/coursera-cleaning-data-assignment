---
title: "README"
author: "Suet Ling Teh"
date: "10/26/2020"
output: html_document
---
Johns Hopkins Data Science Specialization Getting and Cleaning Data Coursera Week 4 Assignment

Data source:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


Experiments description (For more information, please refer to http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones): 
The experiments were carried out with 30 volunteers within age 19-48 years old. Each person performed 6 activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. 3-axial linear acceleration and 3-axial angular velocity were captured with its embedded accelerometer and gyroscope. The obtained dataset was randomly partitioned into two sets, 70% of volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 


For each record it is provided:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope
- A 561-feature vector with time and frequency domain variables.
- Its activity label
- An identifier of the subject who carried out the experiment.


The "run_analysis.R" file perform the following 5 steps:
1. Merge the training and the test sets ("X_test","X_train", "Y_test", "Y_train", "subject_test", "subject_train") into one dataset.  
2. Only extracts the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names from the "activity_labels" file to name the activities in the data set.
4. Appropriately labels the data set with descriptive variable names using the information given in the "features" txt file.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


Data output:
The average of each variable for each activity and each subject was aggregated and stored in meandata2.txt file (which has 180 rows and 68 columns).