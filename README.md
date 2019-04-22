# Getting-and-Cleaning-Data-Course-Project

Information About Data:

The purpose of this project is to collect, work with, and clean a data set. And this dataset is built from the recordings of 30 subjects performing activities of daily living while carrying a waist-mounted smartphone with embedded inertial sensors.

This dataset has information about 30 volunteers performing six different activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Based on experiments the obtained dataset has been partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

Attribute Information:

For each record in the dataset it is provided: 

1.Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 

2.Triaxial Angular velocity from the gyroscope. 

3.A 561-feature vector with time and frequency domain variables. 

4.Its activity label. 

5.An identifier of the subject who carried out the experiment.

This project repository contains following files:

1.README.md: This file gives information about the dataset and how it is built along with the attribute information. It also provides information about how all of the scripts work and how are they connected.

2.CodeBook.md: This code book describes the variables, the data, and any transformations or work that is performed to clean up the data.

3.run_analysis.R: This script has the steps of the data transformation which will lead to a final clean data set that is required for this project.
- Merges the training and the test sets to create one data set.
- Extracts only the measurements on the mean and standard deviation for each measurement.
- Uses descriptive activity names to name the activities in the data set
- Appropriately labels the data set with descriptive variable names.
- From the above data set create a second, independent tidy data set with the average of each variable for each activity and each subject.

4.Tidy.txt: This is the final step of the run_analysis.R where the clean data is extracted from the original data.
