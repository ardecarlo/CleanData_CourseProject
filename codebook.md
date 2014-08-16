The tidy dataset consists of 81 columns, representing the variables as follows:
1. Subject: The ID number of each subject, ranging from 1 to 30
2. Activity: Activity code and ID, as follows:
 - 1 WALKING
 - 2 WALKING_UPSTAIRS
 - 3 WALKING_DOWNSTAIRS
 - 4 SITTING
 - 5 STANDING
 - 6 LAYING
3-81. The remaining 79 relevant variables (out of 561) in the dataset are the means and standard deviations of the following variables:
- tBodyAcc-XYZ
- tGravityAcc-XYZ
- tBodyAccJerk-XYZ
- tBodyGyro-XYZ
- tBodyGyroJerk-XYZ
- tBodyAccMag
- tGravityAccMag
- tBodyAccJerkMag
- tBodyGyroMag
- tBodyGyroJerkMag
- fBodyAcc-XYZ
- fBodyAccJerk-XYZ
- fBodyGyro-XYZ
- fBodyAccMag
- fBodyAccJerkMag
- fBodyGyroMag

The notation "-XYZ" indicates that the variable exists in the X, Y, and Z dimensions. Otherwise, there is only one variable representing one dimension.

A detailed description of these variables, taken from features_info.txt in the UCI HAR dataset, is as follows:
> The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and
tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they
were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to 
remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals 
(tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

> Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals 
(tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using 
the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

> Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, 
fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

There are 180 rows, representing the 180 unique combinations of Subject (1-30) and Activity (1-6). The entry for each row and column is the arithmetic mean of the variable for the given Subject and Activity.
