##download file and save file
url<- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
destfile<- "C:/Users/think/Desktop/getdata_projectfiles_UCI HAR Dataset.zip"
UCIHAR_data<- download.file(url, destfile)


## read training and test files
features_test<- read.table("./UCI HAR Dataset/test/X_test.txt", header=FALSE)
activity_test<- read.table("./UCI HAR Dataset/test/Y_test.txt", header=FALSE)
subject_test<- read.table("./UCI HAR Dataset/test/subject_test.txt", header=FALSE)

features_train<- read.table("./UCI HAR Dataset/train/X_train.txt", header=FALSE)
activity_train<- read.table("./UCI HAR Dataset/train/Y_train.txt", header=FALSE)
subject_train<- read.table("./UCI HAR Dataset/train/subject_train.txt", header=FALSE)

features_names<- read.table("./UCI HAR Dataset/features.txt", header=FALSE, sep = "")
activitylabels<- read.table("./UCI HAR Dataset/activity_labels.txt", header=FALSE)

## merge the training and test sets 
features<- rbind(features_test, features_train)
activity<- rbind(activity_test, activity_train)
subject<- rbind(subject_test, subject_train)

## name the columns
colnames(features)<- features_names$V2
colnames(activity)<- "activity"
colnames(subject)<- "subject"

## merge all data to a complete set of data
complete_data<- cbind(features, activity, subject)


## extract the mean and standard deviation for each measurement
subfeatures_names<- features_names$V2[grep("mean\\(\\)|std\\(\\)", features_names$V2)]
selected_data<- c(as.character(subfeatures_names), "subject", "activity")
complete_data<- subset(complete_data, select= selected_data)

## use descriptive activity names to name the activities
complete_data$activity<- factor(complete_data$activity, levels= activitylabels$V1, labels= activitylabels$V2)

## label the data set with descriptive variable names
colnames(complete_data)<- gsub("^t", "time", colnames(complete_data))
colnames(complete_data)<- gsub("^f", "frequency", colnames(complete_data))
colnames(complete_data)<- gsub("Acc", "Accelerometer", colnames(complete_data))
colnames(complete_data)<- gsub("Gyro", "Gyroscope", colnames(complete_data))
colnames(complete_data)<- gsub("Mag", "Magnitude", colnames(complete_data))
colnames(complete_data)<- gsub("BodyBody", "Body", colnames(complete_data))


## create an independent data set with the average of each variable for each activity and subject.
data2<- aggregate(.~subject+activity, complete_data, mean)
data2<- data2[order(data2$subject, data2$activity),]
write.table(data2, file= "meandata2.txt", row.name= FALSE)





