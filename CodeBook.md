# Code Book
## The purposes of this CodeBook is to describe the variables in the dataset

## Feature Selection 
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The set of variables that were estimated from these signals are: 
mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

## Data Transformation

The test and train data were merged to form a merged data set. From the merged data set, a subset is extracted with only the values of mean and standard deviation. A new column is added to this intermediate data set with the activity description. And finally the variables are labeled appropriately and a tidy data set created. 


## Identifiers
* Subject
* Activity

## Variables
* TimeDomain.BodyLinearAcceleration.Mean.X
* TimeDomain.BodyLinearAcceleration.Mean.Y
* TimeDomain.BodyLinearAcceleration.Mean.Z
* TimeDomain.BodyLinearAcceleration.StandardDeviation.X
* TimeDomain.BodyLinearAcceleration.StandardDeviation.Y
* TimeDomain.BodyLinearAcceleration.StandardDeviation.Z
* TimeDomain.GravityLinearAcceleration.Mean.X
* TimeDomain.GravityLinearAcceleration.Mean.Y
* TimeDomain.GravityLinearAcceleration.Mean.Z
* TimeDomain.GravityLinearAcceleration.StandardDeviation.X
* TimeDomain.GravityLinearAcceleration.StandardDeviation.Y
* TimeDomain.GravityLinearAcceleration.StandardDeviation.Z
* TimeDomain.BodyLinearAccelerationJerk.Mean.X
* TimeDomain.BodyLinearAccelerationJerk.Mean.Y
* TimeDomain.BodyLinearAccelerationJerk.Mean.Z
* TimeDomain.BodyLinearAccelerationJerk.StandardDeviation.X
* TimeDomain.BodyLinearAccelerationJerk.StandardDeviation.Y
* TimeDomain.BodyLinearAccelerationJerk.StandardDeviation.Z
* TimeDomain.BodyAngularVelocity.Mean.X
* TimeDomain.BodyAngularVelocity.Mean.Y
* TimeDomain.BodyAngularVelocity.Mean.Z
* TimeDomain.BodyAngularVelocity.StandardDeviation.X
* TimeDomain.BodyAngularVelocity.StandardDeviation.Y
* TimeDomain.BodyAngularVelocity.StandardDeviation.Z
* TimeDomain.BodyAngularVelocityJerk.Mean.X
* TimeDomain.BodyAngularVelocityJerk.Mean.Y
* TimeDomain.BodyAngularVelocityJerk.Mean.Z
* TimeDomain.BodyAngularVelocityJerk.StandardDeviation.X
* TimeDomain.BodyAngularVelocityJerk.StandardDeviation.Y
* TimeDomain.BodyAngularVelocityJerk.StandardDeviation.Z
* TimeDomain.BodyLinearAccelerationMagnitude.Mean
* TimeDomain.BodyLinearAccelerationMagnitude.StandardDeviation
* TimeDomain.GravityLinearAccelerationMagnitude.Mean
* TimeDomain.GravityLinearAccelerationMagnitude.StandardDeviation
* TimeDomain.BodyLinearAccelerationJerkMagnitude.Mean
* TimeDomain.BodyLinearAccelerationJerkMagnitude.StandardDeviation
* TimeDomain.BodyAngularVelocityMagnitude.Mean
* TimeDomain.BodyAngularVelocityMagnitude.StandardDeviation
* TimeDomain.BodyAngularVelocityJerkMagnitude.Mean
* TimeDomain.BodyAngularVelocityJerkMagnitude.StandardDeviation
* FrequencyDomain.BodyLinearAcceleration.Mean.X
* FrequencyDomain.BodyLinearAcceleration.Mean.Y
* FrequencyDomain.BodyLinearAcceleration.Mean.Z
* FrequencyDomain.BodyLinearAcceleration.StandardDeviation.X
* FrequencyDomain.BodyLinearAcceleration.StandardDeviation.Y
* FrequencyDomain.BodyLinearAcceleration.StandardDeviation.Z
* FrequencyDomain.BodyLinearAcceleration.MeanFrequency.X
* FrequencyDomain.BodyLinearAcceleration.MeanFrequency.Y
* FrequencyDomain.BodyLinearAcceleration.MeanFrequency.Z
* FrequencyDomain.BodyLinearAccelerationJerk.Mean.X
* FrequencyDomain.BodyLinearAccelerationJerk.Mean.Y
* FrequencyDomain.BodyLinearAccelerationJerk.Mean.Z
* FrequencyDomain.BodyLinearAccelerationJerk.StandardDeviation.X
* FrequencyDomain.BodyLinearAccelerationJerk.StandardDeviation.Y
* FrequencyDomain.BodyLinearAccelerationJerk.StandardDeviation.Z
* FrequencyDomain.BodyLinearAccelerationJerk.MeanFrequency.X
* FrequencyDomain.BodyLinearAccelerationJerk.MeanFrequency.Y
* FrequencyDomain.BodyLinearAccelerationJerk.MeanFrequency.Z
* FrequencyDomain.BodyAngularVelocity.Mean.X
* FrequencyDomain.BodyAngularVelocity.Mean.Y
* FrequencyDomain.BodyAngularVelocity.Mean.Z
* FrequencyDomain.BodyAngularVelocity.StandardDeviation.X
* FrequencyDomain.BodyAngularVelocity.StandardDeviation.Y
* FrequencyDomain.BodyAngularVelocity.StandardDeviation.Z
* FrequencyDomain.BodyAngularVelocity.MeanFrequency.X
* FrequencyDomain.BodyAngularVelocity.MeanFrequency.Y
* FrequencyDomain.BodyAngularVelocity.MeanFrequency.Z
* FrequencyDomain.BodyLinearAccelerationMagnitude.Mean
* FrequencyDomain.BodyLinearAccelerationMagnitude.StandardDeviation
* FrequencyDomain.BodyLinearAccelerationMagnitude.MeanFrequency
* FrequencyDomain.BodyBodyLinearAccelerationJerkMagnitude.Mean
* FrequencyDomain.BodyBodyLinearAccelerationJerkMagnitude.StandardDeviation
* FrequencyDomain.BodyBodyLinearAccelerationJerkMagnitude.MeanFrequency
* FrequencyDomain.BodyBodyAngularVelocityMagnitude.Mean
* FrequencyDomain.BodyBodyAngularVelocityMagnitude.StandardDeviation
* FrequencyDomain.BodyBodyAngularVelocityMagnitude.MeanFrequency
* FrequencyDomain.BodyBodyAngularVelocityJerkMagnitude.Mean
* FrequencyDomain.BodyBodyAngularVelocityJerkMagnitude.StandardDeviation
* FrequencyDomain.BodyBodyAngularVelocityJerkMagnitude.MeanFrequency

# Activity Labels
* WALKING (value 1): Subject was walking during the test
* WALKING_UPSTAIRS (value 2): Subject was walking up a staircase during the test
* WALKING_DOWNSTAIRS (value 3): Subject was walking down a staircase during the test
* SITTING (value 4): Subject was sitting during the test
* STANDING (value 5): Subject was standing during the test
* LAYING (value 6): Subject was laying down during the test
