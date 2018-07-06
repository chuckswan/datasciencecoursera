# Code book 

The final data set created by 'run_analysis.R' script is located in the `tidy_data.txt` file.

### Orginal Dataset

The original dataset includes the following files:
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

### Variables in `tidy_data.txt` (Final Dataset)

Each row contains 79 averaged signal measurements for a given activity and subject.

- `Activity`

	Activity identifiers: 
	- `WALKING`: subject was walking
	- `WALKING_UPSTAIRS`: subject was walking upstairs
	- `WALKING_DOWNSTAIRS`: subject was walking downstairs
	- `SITTING`: subject was sitting
	- `STANDING`: subject was standing
	- `LAYING`: subject was laying

- `Subject`

	Subject identifier; ranges from 1 to 30.

### Average of variables

The averaged signal measurements of the following variables are included in the tidy_data.txt file:

  -`TimeBodyAccelerometerMeanX`  
  -`TimeBodyAccelerometerMeanY`  
  -`TimeBodyAccelerometerMeanZ`  
  -`TimeBodyAccelerometerStandardDeviationX`  
  -`TimeBodyAccelerometerStandardDeviationY`  
  -`TimeBodyAccelerometerStandardDeviationZ`  
  -`TimeGravityAccelerometerMeanX`  
  -`TimeGravityAccelerometerMeanY`  
  -`TimeGravityAccelerometerMeanZ`  
  -`TimeGravityAccelerometerStandardDeviationX`  
  -`TimeGravityAccelerometerStandardDeviationY`  
  -`TimeGravityAccelerometerStandardDeviationZ`  
  -`TimeBodyAccelerometerJerkMeanX`  
  -`TimeBodyAccelerometerJerkMeanY`  
  -`TimeBodyAccelerometerJerkMeanZ`  
  -`TimeBodyAccelerometerJerkStandardDeviationX`  
  -`TimeBodyAccelerometerJerkStandardDeviationY`  
  -`TimeBodyAccelerometerJerkStandardDeviationZ`  
  -`TimeBodyGyroscopeMeanX`  
  -`TimeBodyGyroscopeMeanY`  
  -`TimeBodyGyroscopeMeanZ`  
  -`TimeBodyGyroscopeStandardDeviationX`  
  -`TimeBodyGyroscopeStandardDeviationY`  
  -`TimeBodyGyroscopeStandardDeviationZ`  
  -`TimeBodyGyroscopeJerkMeanX`  
  -`TimeBodyGyroscopeJerkMeanY`  
  -`TimeBodyGyroscopeJerkMeanZ`  
  -`TimeBodyGyroscopeJerkStandardDeviationX`  
  -`TimeBodyGyroscopeJerkStandardDeviationY`  
  -`TimeBodyGyroscopeJerkStandardDeviationZ`  
  -`TimeBodyAccelerometerMagnitudeMean`  
  -`TimeBodyAccelerometerMagnitudeStandardDeviation`  
  -`TimeGravityAccelerometerMagnitudeMean`  
  -`TimeGravityAccelerometerMagnitudeStandardDeviation`  
  -`TimeBodyAccelerometerJerkMagnitudeMean`  
  -`TimeBodyAccelerometerJerkMagnitudeStandardDeviation`  
  -`TimeBodyGyroscopeMagnitudeMean`  
  -`TimeBodyGyroscopeMagnitudeStandardDeviation`  
  -`TimeBodyGyroscopeJerkMagnitudeMean`  
  -`TimeBodyGyroscopeJerkMagnitudeStandardDeviation`  
  -`frequencyBodyAccelerometerMeanX`  
  -`frequencyBodyAccelerometerMeanY`  
  -`frequencyBodyAccelerometerMeanZ`  
  -`frequencyBodyAccelerometerStandardDeviationX`  
  -`frequencyBodyAccelerometerStandardDeviationY`  
  -`frequencyBodyAccelerometerStandardDeviationZ`  
  -`frequencyBodyAccelerometerMeanFrequencyX`  
  -`frequencyBodyAccelerometerMeanFrequencyY`  
  -`frequencyBodyAccelerometerMeanFrequencyZ`  
  -`frequencyBodyAccelerometerJerkMeanX`  
  -`frequencyBodyAccelerometerJerkMeanY`  
  -`frequencyBodyAccelerometerJerkMeanZ`  
  -`frequencyBodyAccelerometerJerkStandardDeviationX`  
  -`frequencyBodyAccelerometerJerkStandardDeviationY`  
  -`frequencyBodyAccelerometerJerkStandardDeviationZ`  
  -`frequencyBodyAccelerometerJerkMeanFrequencyX`  
  -`frequencyBodyAccelerometerJerkMeanFrequencyY`  
  -`frequencyBodyAccelerometerJerkMeanFrequencyZ`  
  -`frequencyBodyGyroscopeMeanX`  
  -`frequencyBodyGyroscopeMeanY`  
  -`frequencyBodyGyroscopeMeanZ`  
  -`frequencyBodyGyroscopeStandardDeviationX`  
  -`frequencyBodyGyroscopeStandardDeviationY`  
  -`frequencyBodyGyroscopeStandardDeviationZ`  
  -`frequencyBodyGyroscopeMeanFrequencyX`  
  -`frequencyBodyGyroscopeMeanFrequencyY`  
  -`frequencyBodyGyroscopeMeanFrequencyZ`  
  -`frequencyBodyAccelerometerMagnitudeMean`  
  -`frequencyBodyAccelerometerMagnitudeStandardDeviation`  
  -`frequencyBodyAccelerometerMagnitudeMeanFrequency`  
  -`frequencyBodyAccelerometerJerkMagnitudeMean`  
  -`frequencyBodyAccelerometerJerkMagnitudeStandardDeviation`  
  -`frequencyBodyAccelerometerJerkMagnitudeMeanFrequency`  
  -`frequencyBodyGyroscopeMagnitudeMean`  
  -`frequencyBodyGyroscopeMagnitudeStandardDeviation`  
  -`frequencyBodyGyroscopeMagnitudeMeanFrequency`  
  -`frequencyBodyGyroscopeJerkMagnitudeMean`  
  -`frequencyBodyGyroscopeJerkMagnitudeStandardDeviation`  
  -`frequencyBodyGyroscopeJerkMagnitudeMeanFrequency`  

### Data Transformation

The following data transformation was completed on the orginal dataset as reflected in the 'run_analysis.R' script:

1. The training and test data tables were merged to create one data table.
2. The measurements for the mean and standard deviation were extracted for each measurement.
3. The activity identifiers were replaced with descriptive activity names.
4. The dataset was appropriately labeled with descriptive variable names:  
	- Special characters were removed
	- expanded abbreviations and cleaned up names:  
	  `f` replaced by `frequency`,  
	  `t` replaced by `Time`,  
	  `Acc` replaced by `Accelerometer`,  
    `Gyro" replaced by "Gyroscope`,  
    `Mag` replaced by `Magnitude`,  
    `Freq` replaced by `Frequency`,  
    `std` replaced by `StandardDeviation`,  
    `BodyBody` replaced by `Body`.  
5. From the data set in step 4, the final data set was created with the average of each variable for each activity and each subject.


