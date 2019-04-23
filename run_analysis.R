
#Libraries we use are data.table(it is efficient in handling large data as tables) and 
#dplyr(used to aggregate variables to create the tidy data)
#reshape2 (makes it easy to transform data between wide and long formats)
library(data.table)
library(dplyr)
library(reshape2)

#The aim of the project is to download,clean and extract usable data from the below zip file.
fileurlnew<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
zipfile<-"UCI HAR Dataset.zip"
if(!file.exists(zipfile)){
        download.file(fileurlnew,zipfile,method="curl")
}
#As we have downloaded the file.We need to unzip the file.
if(!file.exists("UCI HAR Dataset")){
        unzip(zipfile)
}

#To check list of all files present in the Dataset
list.files("UCI HAR Dataset")

#Reading supporting Metadata
#The supporting metadata in this data are the name of the features and the name of the activities.
featuresNames<-read.table("./UCI HAR Dataset/features.txt")
activitylabels<-read.table("./UCI HAR Dataset/activity_labels.txt",header = FALSE)


#Formatting train and test data sets
#Both training and test data sets are split up into subject, activity and features- 3 diff files
#Read train data
subjecttrain<-read.table("./UCI HAR Dataset/train/subject_train.txt",header = FALSE)
trainingset<- read.table("./UCI HAR Dataset/train/X_train.txt",header = FALSE)
traininglabels<-read.table("./UCI HAR Dataset/train/y_train.txt",header = FALSE)

#Read the test data
subjecttest<-read.table("./UCI HAR Dataset/test/subject_test.txt",header=FALSE)
testset<-read.table("./UCI HAR Dataset/test/X_test.txt",header=FALSE)
testlabels<-read.table("./UCI HAR Dataset/test/y_test.txt",header = FALSE)        

# Part 1 Merging training and tests set to create one data set
subject<-rbind(subjecttrain,subjecttest)
activity<-rbind(traininglabels,testlabels)
features<-rbind(trainingset,testset)

#The columns in the features data set can be named from the metadata in featureNames
colnames(features)<-t(featuresNames[2])
colnames(activity)<-"Activity"
colnames(subject)<-"Subject"
#As we combined rows we need to column bind(Merge the data) using cbind
# Assign the merged data set to mergeddata
mergeddata<- cbind(subject,activity,features)
head(mergeddata)

# Part 2 - Extracts only the measurements on the mean and standard deviation for each measurement.
#To check all the variable names
names(mergeddata)

#Extracting mean and std from mergeddata
meanandstd<- grep(".*mean.*|.*std.*",names(mergeddata),ignore.case = TRUE)

#Since this will also remove subject and activity
newcolumn<- c(1,2,meanandstd)
dim(completedata)

#Add the new column to the complete data
extracteddata<- completedata[,newcolumn]
dim(extracteddata)

#Part 3 Uses descriptive activity names to name the activities in the data set
#As the Activity is numeric. In order to match up names with activity labels we need to convert to factor variables
extracteddata$Activity<- factor(extracteddata$Activity,levels = activitylabels[,1],labels = activitylabels[,2])

#To check if the label names are updated
head(extracteddata$Activity)

#Part 4 Appropriately labels the data set with descriptive variable names.
#Let's check the names of extracteddata
names(extracteddata)

#By looking at variable we can replace few variable names.
names(extracteddata) <-gsub("Acc","Accelerometer",names(extracteddata))
names(extracteddata)<- gsub("Gyro","Gyroscope",names(extracteddata))
names(extracteddata)<-gsub("BodyBody","Body",names(extracteddata))
names(extracteddata)<- gsub("Mag","Magnitude",names(extracteddata))
names(extracteddata)<- gsub("^t","Time",names(extracteddata))
names(extracteddata)<-gsub("^f","Frequency",names(extracteddata))
names(extracteddata)<-gsub("-mean()","Mean",names(extracteddata),ignore.case = TRUE)
names(extracteddata)<-gsub("-std()","STD",names(extracteddata),ignore.case = TRUE)
names(extracteddata)<-gsub("-freq()","Frequency",names(extracteddata),ignore.case = TRUE)
names(extracteddata)<-gsub("angle","Angle",names(extracteddata),ignore.case = TRUE)
names(extracteddata)<-gsub("gravity","Gravity",names(extracteddata),ignore.case = TRUE)
names(extracteddata)<-gsub("\\()","",names(extracteddata))

#Part 5 From the data set in step 4, creates a second, independent tidy data set 
#with the average of each variable for each activity and each subject.
class(extracteddata$Subject)

#Now we have to set the Subject variable to factor
extracteddata$Subject <- as.factor(extracteddata$Subject)
data.table(extracteddata)
 
 
TidyData <- melt(extracteddata, id = c("Subject", "Activity"))
TidyData <- dcast(TidyData, Subject + Activity ~ variable, mean)

write.table(TidyData, "tidy.txt", row.names = FALSE, quote = FALSE)
