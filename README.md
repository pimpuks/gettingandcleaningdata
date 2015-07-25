Class project README (Getting and Cleaning Data Coursera class)
-----------------------------------------------------------
author: "Pimpuk Sansuth"

date: "19 July, 2015"

The dataset includes the following files:

- README.md (this file)
- run_analysis.R (the script that processes raw data)
- tidy_data.txt (output from run_analysis.r)
- CodeBook.md 

### run_analysis.R

#### Input data
**run_analysis.R** uses input from UCI Human Activity Recognition Data set which is available at  [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip] (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). 
Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

More information about source data set can be found at [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones] (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

**run_analysis.R** uses data set as per its extracted form i.e. following the directory structure
(i.e. run_analysis.R is in the working directory and at the same level as UCI HAR Dataset directory)

- UCI HAR Dataset
    - activity_labels.txt
    - features_info.txt
    - features.txt
    - README.txt
    - test
        - subject_test.txt
        - X_test.txt
        - y_test.txt
    - train
        - subject_train.txt
        - X_train.txt
        - y_train.txt

The input data is divided into 2 sets (train and test). Each *X_\<set\>.txt* contains 

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables

**X_test.txt** contains 2,947 observations and **X_train.txt** contains 7,353 observations. Total observations is 10,300 observations.
The subject (person/volunteer) corresponding to each observation is in *subject_\<set\>.txt*. The activity which is performed is in *y_\<set\>.txt*. Number of records in *subject_\<set\>.txt* and *y_\<set\>.txt* is the same as the number of records in *X_\<set\>.txt*.

For each observation in *X_\<set\>.txt*, there are 561 variables. The name of variable (or feature) is listed in **features.txt**.

#### Packages used in run_analysis.R
run_analysis.r uses the following R packages

- data.table version 1.9.5
- reshape2 version 1.4.1
- dplyr version 0.4.2

run_analysis.R is tested with R version 3.2.0 (2015-04-16) -- "Full of Ingredients", platform: x86_64-apple-darwin13.4.0 (64-bit), on Mac OS X 10.9.5.

### Output
Output of run_analysis.R is a **wide** tidy dataset with 68 columns whereas an observation is a combination of

- subject
- activity.label
- mean value of each selected feature in the source data set (66 features are included), limited to the mean and standard deviation for each measurement, i.e. the features which have mean() and std() in the names (excluding meanFreq() as it is Weighted average of the frequency components to obtain mean frequency).

The output of run_analysis.R is saved into **tidy_data.txt** with ```write.table()``` using ```row.name=FALSE```

Steps and functions used in run_analysis.R is in CodeBook.md (as per the description of class project that a code book describes the variables, the data, and any transformations or work that you performed to clean up the data)

## CodeBook.md
CodeBook.md markdown file contains the descriptions of variables in output data set and the steps of run_analysis.R