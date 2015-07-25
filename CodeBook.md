Codebook for Class project (Getting and Cleaning Data Coursera class)
-----------------------------------------------------------
author: "Pimpuk Sansuth"

date: "19 July, 2015"

## Information about tidy data set

Output data set (in **tidy_data.txt**) is a **wide** tidy dataset with 68 columns whereas an observation is a combination of

- subject
- activity.label
- mean of each feature (from source data set, limited to the mean and standard deviation feature)

### subject

- Description: Identifer of person/volunteer who perform activity in the source data set
- Range: 1-30

### activity.label

- Description: name of activity performed by subject
- Values: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

### Mean value of feature columns (66 columns)
Subsequent columns in the data set are the mean value of each selected feature group by each subject and each activity.

The first component in the column name indicate whether the feature is time-domain or frequency-domain (Fast Fourier Transform (FFT) was applied), hence the prefix "time" or "fourier". The Subsequent component of the column name derived from the original feature name while using "." convention to make it more readable (this follows Google's style guide for R, available at [https://google-styleguide.googlecode.com/svn/trunk/Rguide.xml] (https://google-styleguide.googlecode.com/svn/trunk/Rguide.xml)). 

The range of data in these columns are -1 to 1. 

For detailed description of features in cluded in the source data set, please refer to features_info.txt included in UCI HAR Dataset.zip 

#### time.body.acc.mean.x/y/z

The time domain measure of the mean of linear body acceleration along X, Y, Z axis respectively. The unit of measurement is standard gravity units 'g'.

#### time.body.acc.std.x/y/z

The time domain measure of the standard deviation of linear body acceleration along X, Y, Z axis respectively. The unit of measurement is standard gravity units 'g'.

#### time.gravity.acc.mean.x/y/z

The time domain measure of the mean of gravity acceleration along X, Y, Z axis respectively. The unit of measurement is standard gravity units 'g'.

#### time.gravity.acc.std.x/y/z

The time domain measure of the standard deviation of gravity acceleration along X, Y, Z axis respectively. The unit of measurement is standard gravity units 'g'.

#### time.body.acc.jerk.mean.x/y/z

The time domain measure of the mean of body acceleration with jerk signal along X, Y, Z axis respectively. The unit of measurement is standard gravity units 'g'.

#### time.body.acc.jerk.std.x/y/z

The time domain measure of the standard deviation of body acceleration with jerk signal along X, Y, Z axis respectively. The unit of measurement is standard gravity units 'g'.

#### time.body.gyro.mean.x/y/z

The time domain measure of the mean of angular velocity from gyroscope along X, Y, Z axis respectively. The unit of measurement is radians/second.

#### time.body.gyro.std.x/y/z

The time domain measure of the standard deviation of angular velocity from gyroscope along X axis. The unit of measurement is radians/second.

#### time.body.gyro.jerk.mean.x/y/z

The time domain measure of the mean of angular velocity with jerk signal from gyroscope along X, Y, Z axis. The unit of measurement is radians/second.

#### time.body.gyro.jerk.std.x/y/z

The time domain measure of the standard deviation of angular velocity with jerk signal from gyroscope along X, Y, Z axis. The unit of measurement is radians/second.

#### time.body.acc.mag.mean

The time domain measure of the mean of magnitude of linear body accelaration. The magnitude is calculated using the Euclidean norm.

#### time.body.acc.mag.std

The time domain measure of the standard deviation of magnitude of linear body acceleration. The magnitude is calculated using the Euclidean norm.

#### time.gravity.acc.mag.mean

The time domain measure of the mean of magnitude of gravity accelaration. The magnitude is calculated using the Euclidean norm.

#### time.gravity.acc.mag.std

The time domain measure of the standard deviation of magnitude of gravity accelaration. The magnitude is calculated using the Euclidean norm.

#### time.body.acc.jerk.mag.mean

The time domain measure of the mean of magnitude of jerk signal in linear accelaration. The magnitude is calculated using the Euclidean norm.

#### time.body.acc.jerk.mag.std

The time domain measure of the standard deviation of magnitude of jerk signal in linear accelaration. The magnitude is calculated using the Euclidean norm.

#### time.body.gyro.mag.mean

The time domain measure of the mean of magnitude of angular velocity from gyroscope signal. The magnitude is calculated using the Euclidean norm.

#### time.body.gyro.mag.std

The time domain measure of the standard deviation of magnitude of angular velocity from gyroscope signal. The magnitude is calculated using the Euclidean norm.

#### time.body.gyro.jerk.mag.mean

The time domain measure of the mean of magnitude of angular velocity with jerk signal from gyroscope signal. The magnitude is calculated using the Euclidean norm.

#### time.body.gyro.jerk.mag.std

The time domain measure of the standard deviation of magnitude of angular velocity with jerk signal from gyroscope signal. The magnitude is calculated using the Euclidean norm.

#### fourier.body.acc.mean.x/y/z

The frequency domain measure of the mean of linear body acceleration along X, Y, Z axis respectively. The unit of measurement is standard gravity units 'g'.

#### fourier.body.acc.std.x/y/z

The frequency domain measure of the standard deviation of linear body acceleration along X, Y, Z axis respectively. The unit of measurement is standard gravity units 'g'.

#### fourier.body.acc.jerk.mean.x/y/z

The frequency domain measure of the mean of linear acceleration with jerk signal along X, Y, Z axis respectively. The unit of measurement is standard gravity units 'g'.

#### fourier.body.acc.jerk.std.x/y/z

The frequency domain measure of the standard deviation of linear acceleration with jerk signal along X, Y, Z axis respectively. The unit of measurement is standard gravity units 'g'.

#### fourier.body.gyro.mean.x/y/z

The frequency domain measure of the mean of angular velocity from gyroscope along X, Y, Z axis respectively. The unit of measurement is radians/second.

#### fourier.body.gyro.std.x/y/z

The frequency domain measure of the standard deviation of angular velocity from gyroscope along X axis. The unit of measurement is radians/second.

#### fourier.body.acc.mag.mean

The frequency domain measure of the mean of magnitude of linear body accelaration. The magnitude is calculated using the Euclidean norm.

#### fourier.body.acc.mag.std

The frequency domain measure of the standard deviation of magnitude of linear body acceleration. The magnitude is calculated using the Euclidean norm.

#### fourier.body.body.acc.jerk.mag.mean

The frequency domain measure of the mean of magnitude of linear body acceleration with jerk signal. The magnitude is calculated using the Euclidean norm.

#### fourier.body.body.acc.jerk.mag.std

The frequency domain measure of the standard deviation of magnitude of linear body acceleration with jerk signal.  The magnitude is calculated using the Euclidean norm.

#### fourier.body.body.gyro.mag.mean

The frequency domain measure of the mean of magnitude of angular velocity from gyroscope.  The magnitude is calculated using the Euclidean norm.

#### fourier.body.body.gyro.mag.std

The frequency domain measure of the standard deviation of magnitude of angular velocity from gyroscope. The magnitude is calculated using the Euclidean norm.

#### fourier.body.body.gyro.jerk.mag.mean

The frequency domain measure of the mean of magnitude of angular velocity with jerk signal from gyroscope. The magnitude is calculated using the Euclidean norm.

#### fourier.body.body.gyro.jerk.mag.std

The frequency domain measure of the standard deviation of magnitude of angular velocity with jerk signal from gyroscope. The magnitude is calculated using the Euclidean norm.

##  Overview of run_analysis.R

The following are high level steps in run_analysis.R

1. Read test and train data set with `read.table` into 2 data frames (test and train). To speed up the reading, we first read 5 rows of each data set first to get the column classes which is then used in reading the whole data set. 

2. Read features.txt to get the column names for the test and train data set and use the output to update the column names of 2 data frames from step 1.

3. Subset the 2 data frames from step 2 to only columns which contains "std()" and "mean()" (according to class project instruction step 2. Extracts only the measurements on the mean and standard deviation for each measurement.)

4. Rename the columns of the 2 data frames from step 3 to more readable form.

5. Read subject of each data frame from *subject_\<set\>*. Rename the column name to *subject*

6. Read activity that was performed for each data set from *Y_\<set\>*. Rename the column names to **activity.id**

7. Read activity label from activity_labels.txt. Rename the column names to **activity.id** and **activity.label**

8. Combine each data frames (test, train) with the respective subject data and activity data using `cbind` function. This results in 2 updated data frames (test, train), each contains subject, activity ID (1-6), mean and standard deviation measurements.

9. Read ID and description of activity (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) from activity_labels.txt into a data frame, rename the columns to **activity.id** and **activity.label**

10. Join each data frame (test, train) from step 8 with data frame from step 9 using `merge` function by `activity.id` column.

11. Subset the columns data frames from step 10 to filter out the **activity.id** column (i.e. only **activity.label** remains in the data sets)

12. Convert the data frames to `data.table` using `setDT()` from `data.table` package

13. Use `rbindlist()` to combine the 2 data.tables into one table. This is the data set at step 4 in the class project instruction.

The following steps are to generate an independent tidy data set with the average of each variable for each activity and each subject (step 5 in the class project instruction).

14. Use `groupby()` function to group data in data.table from step 13 by **subject** and **activity.label**

15. Use `summarise_each()` to calculate the **mean** of all the measurements resulted in the final data set.

16. Use `write.table()` with `row.name=FALSE` to write the data set from step 15 to **tidy_data.txt**