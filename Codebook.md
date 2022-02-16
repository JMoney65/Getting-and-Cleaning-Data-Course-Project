# total_means_long file
## Description  
A tidy data set with the results of the course project.  
There are 11880 rows in the tidy data set. This represents means for 6 activities x 30 subjects x 66 measurement variables.  
For example, the first row has: activity = LAYING, subject = 1, measurement variable = tBodyAcc-mean()-X, average = 0.2216.  
In the original data set, for subject = 1 and activity = 6 (LAYING), there were 50 instances of the measurement variable tBodyAcc-mean()-X. The average of these 50 observations is 0.2216.  

## File contents  
activity        
*Description of the activity being measured*    
        
        LAYING  
        SITTING    
        STANDING  
        WALKING  
        WALKING_DOWNSTAIRS  
        WALKING_UPSTAIRS  

subject  
*id representing one of 30 volunteers in the experiment*  

        Integer from 1 to 30  

variable  
*Subset of 66 measurements from the original 561-feature vector with time and frequency domain variables
The subset includes the following mean and standard deviation measurements*  

        tBodyAcc-mean()-X  
        tBodyAcc-mean()-Y  
        tBodyAcc-mean()-Z         
        tBodyAcc-std()-X  
        tBodyAcc-std()-Y  
        tBodyAcc-std()-Z  
        
        tGravityAcc-mean()-X  
        tGravityAcc-mean()-Y  
        tGravityAcc-mean()-Z  
        tGravityAcc-std()-X  
        tGravityAcc-std()-Y  
        tGravityAcc-std()-Z  
        
        tBodyAccJerk-mean()-X
        tBodyAccJerk-mean()-Y  
        tBodyAccJerk-mean()-Z  
        tBodyAccJerk-std()-X  
        tBodyAccJerk-std()-Y  
        tBodyAccJerk-std()-Z 
        
        tBodyGyro-mean()-X  
        tBodyGyro-mean()-Y  
        tBodyGyro-mean()-Z  
        tBodyGyro-std()-X  
        tBodyGyro-std()-Y  
        tBodyGyro-std()-Z  
        
        tBodyGyroJerk-mean()-X  
        tBodyGyroJerk-mean()-Y  
        tBodyGyroJerk-mean()-Z  
        tBodyGyroJerk-std()-X  
        tBodyGyroJerk-std()-Y  
        tBodyGyroJerk-std()-Z  
        
        tBodyAccMag-mean()
        tBodyAccMag-std()   
        
        tGravityAccMag-mean()  
        tGravityAccMag-std()  
        
        tBodyAccJerkMag-mean()  
        tBodyAccJerkMag-std()  
        
        tBodyGyroMag-mean()  
        tBodyGyroMag-std()  
        
        tBodyGyroJerkMag-mean()  
        tBodyGyroJerkMag-std() 
        
        fBodyAcc-mean()-X   
        fBodyAcc-mean()-Y   
        fBodyAcc-mean()-Z   
        fBodyAcc-std()-X   
        fBodyAcc-std()-Y   
        fBodyAcc-std()-Z  
        
        fBodyAccJerk-mean()-X  
        fBodyAccJerk-mean()-Y  
        fBodyAccJerk-mean()-Z  
        fBodyAccJerk-std()-X  
        fBodyAccJerk-std()-Y  
        fBodyAccJerk-std()-Z  
        
        fBodyGyro-mean()-X  
        fBodyGyro-mean()-Y  
        fBodyGyro-mean()-Z  
        fBodyGyro-std()-X  
        fBodyGyro-std()-Y  
        fBodyGyro-std()-Z  
        
        fBodyAccMag-mean()  
        fBodyAccMag-std()  
        
        fBodyBodyAccJerkMag-mean()  
        fBodyBodyAccJerkMag-std()
        
        fBodyBodyGyroMag-mean()  
        fBodyBodyGyroMag-std()  
        
        fBodyBodyGyroJerkMag-mean()  
        fBodyBodyGyroJerkMag-std()  
       
average  
*The average of the measurement variable for subject and activity*  
