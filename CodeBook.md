# Code Book for Getting and Cleaning Data Course Project

**Raw Data**

The Raw Data  of this project is obtained using sensor signals (accelerometer and gyroscope) data collected from the Samsung Galaxy S smartphone, and was provided to us at the links below:

**Data:** https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

**Description:** http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data set that this code book refers to is located in the tidy.txt file of this repository.

The backgroung information of the data set can be found in the README.md file of this repository.

The structure of the data set is described in the Data section, its variables are listed in the Variables section, and the transformations that were carried out to obtain the data set based on the source data.

**Data**

The tidy.txt data file is a text file, containing space-separated values.

The first row contains the names of the variables, which are listed and described in the Variables section, and the following rows contain the values of these variables.

**Variables in the tidy dataset**

Each row contains, for a given subject and activity, 79 averaged signal measurements.

**Identifiers**

Subject

Subject identifier, integer, ranges from 1 to 30.

Activity

Activity identifier, string with 6 possible values:

WALKING: subject was walking
WALKING_UPSTAIRS: subject was walking upstairs
WALKING_DOWNSTAIRS: subject was walking downstairs
SITTING: subject was sitting
STANDING: subject was standing
LAYING: subject was laying

**Measurements**

These measurements are calculated using accelerator and gyroscope.With these sensor dignals  it captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz.The experiments have been video-recorded to label the data manually.

The measurements are classified in two domains:

Time signals (variables prefixed by Time), resulting from the capture of accelerometer and gyroscope raw signals.

Frequency signals (variables prefixed by Frequency), resulting from the application of a Fast Fourier Transform (FFT) to some of the time signals.


**Time-domain signals**

**Average time-domain body acceleration in the X, Y and Z directions:** 

- `TimeBodyAccelerometerMeanX`
- `TimeBodyAccelerometerMeanY`
- `TimeBodyAccelerometerMeanZ`

**Standard deviation of the time-domain body acceleration in the X, Y and Z directions:**

- `TimeBodyAccelerometerSTDX`
- `TimeBodyAccelerometerSTDY`
- `TimeBodyAccelerometerSTDZ`

**Average time-domain gravity acceleration in the X, Y and Z directions:**

- `TimeGravityAccelerometerMeanX`
- `TimeGravityAccelerometerMeanY`
- `TimeGravityAccelerometerMeanZ`

**Standard deviation of the time-domain gravity acceleration in the X, Y and Z directions:**

- `TimeGravityAccelerometerSTDX`
- `TimeGravityAccelerometerSTDY`
- `TimeGravityAccelerometerSTDZ`

**Average time-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:**

- `TimeBodyAccelerometerJerkMeanX`
- `TimeBodyAccelerometerJerkMeanY`
- `TimeBodyAccelerometerJerkMeanZ`

**Standard deviation of the time-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:**

- `TimeBodyAccelerometerJerkSTDX`
- `TimeBodyAccelerometerJerkSTDY`
- `TimeBodyAccelerometerJerkSTDZ`

**Average time-domain body angular velocity in the X, Y and Z directions:**

- `TimeBodyGyroscopeMeanX`
- `TimeBodyGyroscopeMeanY`
- `TimeBodyGyroscopeMeanZ`

**Standard deviation of the time-domain body angular velocity in the X, Y and Z directions:**

- `TimeBodyGyroscopeSTDX`
- `TimeBodyGyroscopeSTDY`
- `TimeBodyGyroscopeSTDZ`

**Average time-domain body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions:**

- `TimeBodyGyroscopeJerkMeanX`
- `TimeBodyGyroscopeJerkMeanY`
- `TimeBodyGyroscopeJerkMeanZ`

**Standard deviation of the time-domain body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions:**

- `TimeBodyGyroscopeJerkSTDX
- `TimeBodyGyroscopeJerkSTDY`
- `TimeBodyGyroscopeJerkSTDZ`

**Average and standard deviation of the time-domain magnitude of body acceleration:**

- `TimeBodyAccelerometerMagnitudeMean`
- `TimeBodyAccelerometerMagnitudeSTD`

**Average and standard deviation of the time-domain magnitude of gravity acceleration:**

- `TimeGravityAccelerometerMagnitudeMean`
- `TimeGravityAccelerometerMagnitudeSTD`

**Average and standard deviation of the time-domain magnitude of body acceleration jerk (derivation of the acceleration in time):**

- `TimeBodyAccelerometerJerkMagnitudeMean`
- `TimeBodyAccelerometerJerkMagnitudeSTD`

**Average and standard deviation of the time-domain magnitude of body angular velocity:**

- `TimeBodyGyroscopeMagnitudeMean`
- `TimeBodyGyroscopeMagnitudeSTD`

**Average and standard deviation of the time-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time):**

- `TimeBodyGyroscopeJerkMagnitudeMean`
- `TimeBodyGyroscopeJerkMagnitudeSTD`

**Frequency-domain signals**

**Average frequency-domain body acceleration in the X, Y and Z directions:**

- `FrequencyBodyAccelerometerMeanX`
- `FrequencyBodyAccelerometerMeanY`
- `FrequencyBodyAccelerometerMeanZ`

**Standard deviation of the frequency-domain body acceleration in the X, Y and Z directions:**

- `FrequencyBodyAccelerometerSTDX`
- `FrequencyBodyAccelerometerSTDY`
- `FrequencyBodyAccelerometerSTDZ`

**Weighted average of the frequency components of the frequency-domain body acceleration in the X, Y and Z directions:**

- `FrequencyBodyAccelerometerMeanFrequencyX`
- `FrequencyBodyAccelerometerMeanFrequencyY`
- `FrequencyBodyAccelerometerMeanFrequencyZ`

**Average frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:**

- `FrequencyBodyAccelerometerJerkMeanX`
- `FrequencyBodyAccelerometerJerkMeanY`
- `FrequencyBodyAccelerometerJerkMeanZ`

**Standard deviation of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:**

- `FrequencyBodyAccelerometerJerkSTDX`
- `FrequencyBodyAccelerometerJerkSTDY`
- `FrequencyBodyAccelerometerJerkSTDZ`

**Weighted average of the frequency components of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:**

- `FrequencyBodyAccelerometerJerkMeanFrequencyX`
- `FrequencyBodyAccelerometerJerkMeanFrequencyY`
- `FrequencyBodyAccelerometerJerkMeanFrequencyZ`

**Average frequency-domain body angular velocity in the X, Y and Z directions:**

- `FrequencyBodyGyroscopeMeanX`
- `FrequencyBodyGyroscopeMeanY`
- `FrequencyBodyGyroscopeMeanZ`

**Standard deviation of the frequency-domain body angular velocity in the X, Y and Z directions:**

- `FrequencyBodyGyroscopeSTDX`
- `FrequencyBodyGyroscopeSTDY`
- `FrequencyBodyGyroscopeSTDZ`

**Weighted average of the frequency components of the frequency-domain body angular velocity in the X, Y and Z directions:**

- `FrequencyBodyGyroscopeMeanFrequencyX`
- `FrequencyBodyGyroscopeMeanFrequencyY`
- `FrequencyBodyGyroscopeMeanFrequencyZ`

**Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body acceleration:**

- `FrequencyBodyAccelerometerMagnitudeMean
- `FrequencyBodyAccelerometerMagnitudeSTD
- `FrequencyBodyAccelerometerMagnitudeMeanFrequency

**Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body acceleration jerk (derivation of the acceleration in time):**

- `FrequencyBodyAccelerometerJerkMagnitudeMean`
- `FrequencyBodyAccelerometerJerkMagnitudeSTD`
- `FrequencyBodyAccelerometerJerkMagnitudeMeanFrequency`

**Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body angular velocity:**

- `FrequencyBodyGyroscopeMagnitudeMean`
- `FrequencyBodyGyroscopeMagnitudeSTD`
- `FrequencyBodyGyroscopeMagnitudeMeanFrequency`

**Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time):**

- `FrequencyBodyGyroscopeJerkMagnitudeMean`
- `FrequencyBodyGyroscopeJerkMagnitudeSTD`
- `FrequencyBodyGyroscopeJerkMagnitudeMeanFrequency`

**Transformations**

1.The training and test sets were merged together to create one dataset.

2.Extracted only the features that refer to the Mean and StandardDeviation (i.e., mean and std)

3.The activity identifiers been replced by descriptive names.

4.The variable names have been replaced by descriptive names. The special characters ( ,),- have been removed.Letters as f and t are replaced by Time and Frequency. Acc, Gyro, Mag, Freq, mean,std and bodybody  were replaced with Accelerometer,Gyroscope,Magnitude, Frequency, Mean,STD and Body respectively.

5.From the above data set an independent tidy data set has been created with the average of each variable for each activity and each subject

















