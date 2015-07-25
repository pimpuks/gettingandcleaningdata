library(data.table)
library(reshape2)
library(dplyr)

renameColumns <- function (df) {
    names(df) <- sub("\\(","", names(df),)
    names(df) <- sub("\\)","", names(df),)
    names(df) <- gsub("-",".", names(df),)
    names(df) <- sub("tBody","time.body", names(df),)
    names(df) <- sub("fBody","fourier.body", names(df),)
    names(df) <- sub("tGravity","time.gravity", names(df),)
    names(df) <- sub("bodyAcc","body.acc", names(df),)
    names(df) <- sub("gravityAcc","gravity.acc", names(df),)
    names(df) <- sub("bodyGyro","body.gyro", names(df),)
    names(df) <- sub("accJerk","acc.jerk", names(df),)
    names(df) <- sub("gyroJerk","gyro.jerk", names(df),)
    names(df) <- sub("accelerationMag","acceleration.mag", names(df),)
    names(df) <- sub("jerkMag","jerk.mag", names(df),)
    names(df) <- sub("bodyBody","body.body", names(df),)
    names(df) <- sub("AccJerkMag","acc.jerk.mag", names(df),)
    names(df) <- sub("GyroJerkMag","gyro.jerk.mag", names(df),)
    names(df) <- sub("bodyacc","body.acc", names(df),)
    names(df) <- sub("bodygyro","body.gyro", names(df),)
    names(df) <- sub("gyroMag","gyro.mag", names(df),)
    names(df) <- sub("accMag","acc.mag", names(df),)
    names(df) <- sub("bodyGyroMag","body.gyro.mag", names(df),)
    names(df) <- tolower(names(df))
    df
}

readData <- function(dataset) {
    data.file <- paste("./UCI HAR Dataset/",dataset,"/X_",dataset,".txt", sep="")
    # Read column names from features.txt
    col.names <- read.table("./UCI HAR Dataset/features.txt", stringsAsFactors=FALSE, sep=" ")[2]
    
    # Read data file to get column classes to speed up the next step
    df <- read.table(data.file, nrows=5)
    df.classes <- lapply(df,class)
    
    # Read full data file
    df <- read.table(data.file, colClasses=df.classes)
    # Assign column names based on features.txt
    names(df) <- col.names[,1]
    # Identify columns with std() and mean() in the column names
    std.mean.cols <- grep("-std\\(\\)|-mean\\(\\)", names(df))
    # std.mean.cols <- grep("-std|-mean", names(df))
    # Subset to only std() and mean() columns
    df <- df[,std.mean.cols]
    # Rename columns to more meaningful text
    df <- renameColumns(df)
    # Return data frame
    df
}

readSubjectData <- function (dataset) {
    subject.file <- paste("./UCI HAR Dataset/",dataset,"/subject_",dataset,".txt", sep="")
    subject.df <- read.table(subject.file)
    names(subject.df) <- c("subject")
    subject.df
}

readActivity <- function(dataset) {
    activity.file <- paste("./UCI HAR Dataset/",dataset,"/y_",dataset,".txt", sep="")
    activity.df <- read.table(activity.file)
    names(activity.df) <- c("activity.id")
    activity.df
}
mergeData <- function (subject, activity, data) {
    combine.data <- cbind(subject, activity, data)
    activity.labels <- read.table("./UCI HAR Dataset/activity_labels.txt")
    names(activity.labels) <- c("activity.id", "activity.label")
    data.with.activity.label <- merge(combine.data, activity.labels, by.x = "activity.id", by.y = "activity.id")
    data.with.activity.label[,c(2:ncol(data.with.activity.label))]
    #data.with.activity.label
}
# Read Test Data set to get classes to speed up the next step
test.data <- readData("test")
train.data <- readData("train")

test.subject <- readSubjectData("test")
train.subject <- readSubjectData("train")

# Read activity labels for observations in test dataset
test.activity <- readActivity("test")
train.activity <- readActivity("train")

test.data <- mergeData(test.subject,test.activity, test.data)
train.data <- mergeData(train.subject,train.activity, train.data) 
setDT(test.data)
setDT(train.data)

l = list(test.data, train.data)
combine.data <- rbindlist(l)

groupby.data <- combine.data %>% group_by(subject, activity.label)
tidy.data <- groupby.data %>% summarise_each(funs(mean))
#fn <- function(x){paste("group.avg.", x,sep="")}
#new.names <- sapply(names(tidy.data)[3:ncol(tidy.data)], fn)
#names(tidy.data)[3:ncol(tidy.data)] <- new.names
tidy.data <- tidy.data[order(tidy.data$subject, tidy.data$activity.label),]
write.table(tidy.data,"./tidy_data.txt", row.name=FALSE)
