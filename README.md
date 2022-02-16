# Getting-and-Cleaning-Data-Course-Project  
## run_analysis.R script  
### Description  
The script processes and summarizes data collected as described at the following website.  
https://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones  
## Source files for script
The source files are in a zipped archive here  
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  
1. Unzip all the files in the archive.  
2. Copy the following 6 files to a data folder in your working directory.  

features.txt  
561-feature vector with time and frequency domain variables. These are fully described in features_info.txt.  
X_train.txt  
7352 observations for training data set. Each row 561-feature vector. This represents a subject and an activity. The subject is found in the same row in the subject_train.txt file. The activity is found in the same row of the y_train.txt file.  
X_test.txt:  
2947 observations for test data set. Same format as training data set.  
y_train.txt:  
Integer from 1-6 with the activity for each observation in the training data set.  
y_text.txt:  
Activity info for the test data set. Same format as training.  
subject_train.txt:  
7352 rows. Each row includes an integer with the subject id for that observation in training data set. The subject id for training is set of 21 integers in range 1-30 representing 70% of 30 subject randomly assigned to training data set.  
subject_test.txt:  
2947 rows. Same format as training described above. The subject id for test is set of 9 integers in range 1-30 representing 30% of 30 subject randomly assigned to test data set.  

3. copy run_analysis.R to the working directory.

4. source('run_analysis.R')

## Information files  
The following files have supplemental information on the variables but are not accessed by the script and do not  
need to be in the data folder in the working directory.

README.txt:  
Detailed description of the data and key files.  
features_info.txt:  
Detailed description of the 561 measurements.  
activity_labels.txt:  
Type of activity for each of the six integers (1-6) in the y_train.txt and y_text.txt files.  

## Description of script

1. Read in features.txt file and capture the 561 feature names
2. Read in training data, add feature names to columns
3. Read in test data, add feature names to columns
4. Stack the training and test data into one combined data frame
5. Subset the combined data with only the mean and standard deviation measures. Only 66 measures with the pattern mean() and std() are included.
6. Read in the corresponding subject ids for training and test data. Stack into combined set of subject ids in same order as combined data set. Add subject ids to combined data set.
7. Read in the corresponding activity labels (integers 1-6) for training and test data. Add description of activity. Stack into combined set in same order as combined data set. Add activity descriptions to combined data set.
8. Group combined data set by activity and subject. Calculate means for the 66 measures.
9. Reshape into long form of data set with one measure mean per combination of activity and subject.
10. Write data set to 'total_means_long.txt' text file in the working directory.

