# 1. Merge the training and the test sets to create one data set

# read in the features vector
features <- read.table('./data/features.txt')
colnames(features) <- c('feature_num','feature_name')

# read in the training data
train_data <- read.table('./data/X_train.txt')
# set column names to feature names from feature vector
colnames(train_data) <- features$feature_name
# add variable that this is train data
# train_data$source <- rep('train',nrow(train_data))

# read in the test data
test_data <- read.table('./data/X_test.txt')
# set column names to feature names from feature vector
colnames(test_data) <- features$feature_name
# add variable that this is test data
# test_data$source <- rep('test',nrow(test_data))
# stack the train and test data frames
total_data <- rbind(train_data, test_data)

# 2. Extract the mean and standard deviation measurements
# These are assumed to be the measurements including strings of the form mean() and std()
# Did not include measurements with strings of the form meanFreq() or gravityMean
# These measurements do not have a corresponding standard deviation and are not included

library(stringr)
# identify all variable names with pattern mean( or std(. Keep source variable for reference
pat <- str_detect(names(total_data), 'mean\\(|std\\(|source')
names_keep <- names(total_data)[pat]
# set total data frame to only include selected mean and standard deviation measurements
total_data <- select(total_data, names_keep)

# read in the train subject identifiers.
train_subject <- read.table('./data/subject_train.txt')
# read in the test subject identifiers.
test_subject <- read.table('./data/subject_test.txt')
# stack the train and test subject identifiers in same order as train and test data was stacked
total_subject <- rbind(train_subject, test_subject)
# add subject identifiers to total data set
total_data$subject <- total_subject$V1

# 3. Add descriptive activity names to the total data set

# read in training labels. Each observation is an integer 1-6 identifying an activity
train_labels <- read.table('./data/y_train.txt')
# read in test labels
test_labels <- read.table('./data/y_test.txt')
# stack the train and test label data frames in same order as train and test was stacked
total_labels <- rbind(train_labels, test_labels)

# add activity names to the total labels data frame
library(dplyr)
total_labels <- mutate(total_labels, activity_name = 
                               ifelse(V1==1, 'WALKING',
                                      ifelse(V1==2, 'WALKING_UPSTAIRS',
                                             ifelse(V1==3, 'WALKING_DOWNSTAIRS',
                                                    ifelse(V1==4, 'SITTING',
                                                           ifelse(V1==5, 'STANDING', 'LAYING'))))))


# add activity names to total data
total_data$activity_name <- total_labels$activity_name
total_data <- rename(total_data, activity = activity_name)

# 4. Label the data set with descriptive variable names.
# The names of the first 66 variables (columns) of total data set use the original variable 
# names from the features.txt file for the selected mean and standard deviation measures. These 
# seem sufficiently descriptive.
# subject is integer from 1-30 identifying the subject
# activity_name is descriptive name for one of six activities engaged in by subject

# 5. Create a second, independent tidy data set with the average of each variable for each 
# activity and each subject.

# Group total data by activity and subject and calculate the means of the non-groups variables
# Assign result to new data frame
total_means <- total_data %>% group_by(activity, subject) %>% summarise_all(mean)
# long form of data frame where there is one average per row
library(reshape2)
total_means_long <- melt(total_means, id=c('activity', 'subject'), value.name='average')
# write out the long form data frame to a txt file
# We are instructed to set row.names = FALSE
write.table(total_means_long, file = 'total_means_long.txt', row.names = FALSE)

