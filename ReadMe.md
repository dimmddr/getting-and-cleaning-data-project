1. Merges the training and the test sets to create one data set.
I'm get 
y_train.txt, X_train.txt, subject_train.txt from train dir and merge them with
y_test.txt, X_test.txt, subject_test.txt from test dir
and create one dataset.
At the same time I did 4 step - I replace generic column name with feature names 
from file features.txt

2. Extracts only the measurements on the mean and standard deviation 
    for each measurement. 
There I drop all needless column - I need only mean and standard deviation

3. Uses descriptive activity names to name the activities in the data set
I'm get activity names from activity_labels.txt file and replace activity ID 
in data frame with that names.

4. Appropriately labels the data set with descriptive variable names. 
See step 1

5. From the data set in step 4, creates a second, independent tidy data set
    with the average of each variable for each activity and each subject.
There I did exactly what step names say: create tidy data set.

P.S. Sorry for my English, it's clearly not my native language.