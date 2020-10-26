---
title: "Code book- Human Activity Recognition Using Smartphones Dataset"
output: html_document
---

Source code "run_analysis.R" file for the complete code to run the following 5 steps:
1. Merge the training and the test sets ("X_test","X_train", "Y_test", "Y_train", "subject_test", "subject_train") into one dataset.  
2. Only extracts the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names from the "activity_labels" file to name the activities in the data set.
4. Appropriately labels the data set with descriptive variable names using the information given in the "features" txt file.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Data output
The averaged mean and standard deviation of each variable for each activity and each subject was aggregated and stored in meandata2.txt file (180 obs. of  68 variables).

Variables                                     class                
subject                                       : int               
activity                                      : Factor w/ 6 levels 
timeBodyAccelerometer-mean()-X                : numeric           
timeBodyAccelerometer-mean()-Y                : numeric           
timeBodyAccelerometer-mean()-Z                : numeric 
timeBodyAccelerometer-std()-X                 : numeric   
timeBodyAccelerometer-std()-Y                 : numeric   
timeBodyAccelerometer-std()-Z                 : numeric   
timeGravityAccelerometer-mean()-X             : numeric   
timeGravityAccelerometer-mean()-Y             : numeric
timeGravityAccelerometer-mean()-Z             : numeric  
timeGravityAccelerometer-std()-X              : numeric  
timeGravityAccelerometer-std()-Y              : numeric  
timeGravityAccelerometer-std()-Z              : numeric  
timeBodyAccelerometerJerk-mean()-X            : numeric  
timeBodyAccelerometerJerk-mean()-Y            : numeric  
timeBodyAccelerometerJerk-mean()-Z            : numeric  
timeBodyAccelerometerJerk-std()-X             : numeric  
timeBodyAccelerometerJerk-std()-Y             : numeric  
timeBodyAccelerometerJerk-std()-Z             : numeric 
timeBodyGyroscope-mean()-X                    : numeric   
timeBodyGyroscope-mean()-Y                    : numeric  
timeBodyGyroscope-mean()-Z                    : numeric  
timeBodyGyroscope-std()-X                     : numeric  
timeBodyGyroscope-std()-Y                     : numeric  
timeBodyGyroscope-std()-Z                     : numeric 
timeBodyGyroscopeJerk-mean()-X                : numeric  
timeBodyGyroscopeJerk-mean()-Y                : numeric  
timeBodyGyroscopeJerk-mean()-Z                : numeric  
timeBodyGyroscopeJerk-std()-X                 : numeric
timeBodyGyroscopeJerk-std()-Y                 : numeric  
timeBodyGyroscopeJerk-std()-Z                 : numeric  
timeBodyAccelerometerMagnitude-mean()         : numeric  
timeBodyAccelerometerMagnitude-std()          : numeric  
timeGravityAccelerometerMagnitude-mean()      : numeric  
timeGravityAccelerometerMagnitude-std()       : numeric  
timeBodyAccelerometerJerkMagnitude-mean()     : numeric  
timeBodyAccelerometerJerkMagnitude-std()      : numeric  
timeBodyGyroscopeMagnitude-mean()             : numeric 
timeBodyGyroscopeMagnitude-std()              : numeric  
timeBodyGyroscopeJerkMagnitude-mean()         : numeric 
timeBodyGyroscopeJerkMagnitude-std()          : numeric 
frequencyBodyAccelerometer-mean()-X           : numeric  
frequencyBodyAccelerometer-mean()-Y           : numeric  
frequencyBodyAccelerometer-mean()-Z           : numeric  
frequencyBodyAccelerometer-std()-X            : numeric 
frequencyBodyAccelerometer-std()-Y            : numeric  
frequencyBodyAccelerometer-std()-Z            : numeric 
frequencyBodyAccelerometerJerk-mean()-X       : numeric 
frequencyBodyAccelerometerJerk-mean()-Y       : numeric 
frequencyBodyAccelerometerJerk-mean()-Z       : numeric  
frequencyBodyAccelerometerJerk-std()-X        : numeric 
frequencyBodyAccelerometerJerk-std()-Y        : numeric
frequencyBodyAccelerometerJerk-std()-Z        : numeric  
frequencyBodyGyroscope-mean()-X               : numeric  
frequencyBodyGyroscope-mean()-Y               : numeric  
frequencyBodyGyroscope-mean()-Z               : numeric 
frequencyBodyGyroscope-std()-X                : numeric 
frequencyBodyGyroscope-std()-Y                : numeric  
frequencyBodyGyroscope-std()-Z                : numeric  
frequencyBodyAccelerometerMagnitude-mean()    : numeric  
frequencyBodyAccelerometerMagnitude-std()     : numeric  
frequencyBodyAccelerometerJerkMagnitude-mean(): numeric 
frequencyBodyAccelerometerJerkMagnitude-std() : numeric  
frequencyBodyGyroscopeMagnitude-mean()        : numeric  
frequencyBodyGyroscopeMagnitude-std()         : numeric 
frequencyBodyGyroscopeJerkMagnitude-mean()    : numeric  
frequencyBodyGyroscopeJerkMagnitude-std()     : numeric 


Variables description
subject: An identifier of the subject who carried out the experiment.                                                 
activity: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS,SITTING, STANDING, LAYING                                     features: Based on the features_info descriptions, the features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals were captured at a constant rate of 50 Hz. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (timeBodyAccelerometer-XYZ and timeGravityAccelerometer-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (timeBodyAccelerometerJerk-XYZ and timeBodyGyroscopeJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (timeBodyAccelometerMagnitude, timeGravityAccelerometerMagnitude, timeBodyAccelerometerJerkMagnitude, timeBodyGyroscopeMagnitude timeBodyGyroscopeJerkMagnitude). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing frequencyBodyAccelerometer-XYZ, frequencyBodyAccelerometerJerk-XYZ, frequencyBodyGyroscope-XYZ, frequencyBodyAccelerometerJerkMagnitude, frequencyBodyGyroscopeMagnitude, frequencyBodyGyroscopeJerkMagnitude.

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.







