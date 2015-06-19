#unzip data
#unzip(zipfile = "dataset.zip")

#Create output dirs
output <- "dataset"
dir.create(path = output)

trainSet <- "./UCI HAR Dataset/train/"
testSet <- "./UCI HAR Dataset/test/"

# 1. Merge data into one dataset
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
y <- rbind(y_train, y_test)

X_train <- read.table("./UCI HAR Dataset/train/X_train.txt", sep = "", colClasses = rep("numeric", 561))
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt", sep = "", colClasses = rep("numeric", 561))
X <- rbind(X_train, X_test)

subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
subject <- rbind(subject_train, subject_test)

features <- read.table("UCI HAR Dataset/features.txt", stringsAsFactors = F)
names(features) <- c("number", "name")
## Add descriptive variable names
names(X) <- features$name
names(y) <- "labels"
names(subject) <- "subject"

dataset <- data.frame(X)

##CLear variables

rm(y_train, y_test, X_test, X_train, subject_test, subject_train)
#2. Extracts only the measurements on the mean and standard deviation for each measurement. 
##Create list of needed features
cols <- grep("*mean\\(\\)*|*std*", features$name)

##Create clean dataset
cleanDataset <- dataset[,cols]
cleanDataset <- cbind(cleanDataset, y, subject) #Add activity labels and subject labels

#3. Uses descriptive activity names to name the activities in the data set
acvtivity <- read.table("UCI HAR Dataset/activity_labels.txt", stringsAsFactors = F)
names(activity) <- c("labels", "name")
##Replace activity number with activity name
cleanDataset <- merge(cleanDataset, activity, by = "labels")
##Drop unnecessary column
cleanDataset$labels <- NULL

#4. (Actually it's 5., but step 4 alredy done in step 1)
#Create tidy dataset
tidyData <- aggregate(. ~ name + subject, data = cleanDataset, mean)
write.table(tidyData, file = paste0(output, "/tidyDataset.txt"), row.names = F)
