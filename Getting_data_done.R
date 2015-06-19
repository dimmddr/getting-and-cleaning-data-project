#unzip data
unzip(zipfile = "dataset.zip")

#Create output dirs
output <- "dataset"
dir.create(path = output)
dir.create(path = paste0(output, "/Inertial Signals"))

trainSet <- "./UCI HAR Dataset/train/"
testSet <- "./UCI HAR Dataset/test/"

# 1. Merge data into one dataset
##Terrible manual merge, but faster to do then develop right loop
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
y <- rbind(y_train, y_test)

X_train <- read.table("./UCI HAR Dataset/train/X_train.txt", sep = "", colClasses = rep("numeric", 561))
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt", sep = "", colClasses = rep("numeric", 561))
X <- rbind(X_train, X_test)

subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
subject <- rbind(subject_train, subject_test)

body_acc_x_train <- read.table("./UCI HAR Dataset/train/Inertial Signals/body_acc_x_train.txt")
body_acc_x_test <- read.table("./UCI HAR Dataset/test/Inertial Signals/body_acc_x_test.txt")
body_acc_x <- rbind(body_acc_x_train, body_acc_x_test)

body_acc_y_train <- read.table("./UCI HAR Dataset/train/Inertial Signals/body_acc_y_train.txt")
body_acc_y_test <- read.table("./UCI HAR Dataset/test/Inertial Signals/body_acc_y_test.txt")
body_acc_y <- rbind(body_acc_y_train, body_acc_y_test)

body_acc_z_train <- read.table("./UCI HAR Dataset/train/Inertial Signals/body_acc_z_train.txt")
body_acc_z_test <- read.table("./UCI HAR Dataset/test/Inertial Signals/body_acc_z_test.txt")
body_acc_z <- rbind(body_acc_z_train, body_acc_z_test)

body_gyro_x_train <- read.table("./UCI HAR Dataset/train/Inertial Signals/body_gyro_x_train.txt")
body_gyro_x_test <- read.table("./UCI HAR Dataset/test/Inertial Signals/body_gyro_x_test.txt")
body_gyro_x <- rbind(body_gyro_x_train, body_gyro_x_test)

body_gyro_y_train <- read.table("./UCI HAR Dataset/train/Inertial Signals/body_gyro_y_train.txt")
body_gyro_y_test <- read.table("./UCI HAR Dataset/test/Inertial Signals/body_gyro_y_test.txt")
body_gyro_y <- rbind(body_gyro_y_train, body_gyro_y_test)

body_gyro_z_train <- read.table("./UCI HAR Dataset/train/Inertial Signals/body_gyro_z_train.txt")
body_gyro_z_test <- read.table("./UCI HAR Dataset/test/Inertial Signals/body_gyro_z_test.txt")
body_gyro_z <- rbind(body_gyro_z_train, body_gyro_z_test)

total_acc_x_train <- read.table("./UCI HAR Dataset/train/Inertial Signals/total_acc_x_train.txt")
total_acc_x_test <- read.table("./UCI HAR Dataset/test/Inertial Signals/total_acc_x_test.txt")
total_acc_x <- rbind(total_acc_x_train, total_acc_x_test)

total_acc_y_train <- read.table("./UCI HAR Dataset/train/Inertial Signals/total_acc_y_train.txt")
total_acc_y_test <- read.table("./UCI HAR Dataset/test/Inertial Signals/total_acc_y_test.txt")
total_acc_y <- rbind(total_acc_y_train, total_acc_y_test)

total_acc_z_train <- read.table("./UCI HAR Dataset/train/Inertial Signals/total_acc_z_train.txt")
total_acc_z_test <- read.table("./UCI HAR Dataset/test/Inertial Signals/total_acc_z_test.txt")
total_acc_z <- rbind(total_acc_z_train, total_acc_z_test)

#2. 
