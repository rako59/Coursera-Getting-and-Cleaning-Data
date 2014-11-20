
## #############################################################################
## Check if dependencies are installed and require them.                 #######
## =============================================================================
print("-----------------------------------------------------------------------")
print("The script run_analysis.R depends on the library data.table.")
print("If you have not installed them, you will be prompted a choice to do so.")
print("-----------------------------------------------------------------------")
flush.console()

RequireOrInstall <- function(package) {
  suppressWarnings({
    if (!require(package, character.only=TRUE)) {
      installPackage <- readline(paste("Package", package, "not found. Install? (y for yes, otherwise for no): "))
      if (installPackage == "y") {
        install.packages(package)
      }
      require(package,character.only=TRUE)  
    }})
}
RequireOrInstall("data.table")


## #############################################################################
## Step 1. Merges the training and the test sets to create one data set. #######
## =============================================================================
print("Step 1. Merges the training and the test sets to create one data set.")
flush.console()

## A. Unzip the data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
##    and rename the folder with "data".
## B. Check the folder "data" and the assesment.R script are in the current working directory.
# setwd("c:/R/coursera/gettingcleaningdata/assesment/") ## set to your working directory
# dir()

##
## Read the TRAIN SET file list ================================================
##

## read TRAIN DATA
TrainData <- read.table("./data/train/X_train.txt")
#View(TrainData)
#head(TrainData)
dim(TrainData) # 7352*561

## read TRAIN LABELS. Its range is from 1 to 6. 
TrainLabel <- read.table("./data/train/y_train.txt")
#View(TrainLabel)
#head(TrainLabel)
table(TrainLabel)
dim(TrainLabel) # 7352

## read TRAIN SUBJECTS who performed the activity for each window sample.
## Its range is from 1 to 30.
TrainSubject <- read.table("./data/train/subject_train.txt")
#View(TrainSubject)
#head(TrainSubject)
table(TrainSubject)
dim(TrainSubject) # 7352

##
## Read the TEST SET file list =================================================
##

## read TEST DATA
TestData <- read.table("./data/test/X_test.txt")
#View(TestnDt)
head(TestData)
dim(TestData) # 2947*561

## read TEST LABELS. Its range is from 1 to 6.
TestLabel <- read.table("./data/test/y_test.txt")
#View(TestLabel)
#head(TestLabel)
table(TestLabel)
dim(TestLabel) # 2947

## read TEST SUBJECTS who performed the activity for each window sample. 
## Its range is from 1 to 30.
TestSubject <- read.table("./data/test/subject_test.txt")
#View(TestSubject)
#head(TestSubject)
table(TestSubject)
dim(TestSubject) # 2847

##
## Join sets ===================================================================
##

JoinData <- rbind(TrainData, TestData)
dim(JoinData) # 10299*561

JoinLabel <- rbind(TrainLabel, TestLabel)
table(JoinLabel)
dim(JoinLabel) # 10299*1

JoinSubject <- rbind(TrainSubject, TestSubject)
table(JoinSubject)
dim(JoinSubject) # 10299*1

## #############################################################################
## Step 2. Extracts only the measurements on the mean and standard deviation  ##
##         for each measurement.                                              ##
## =============================================================================
print("Step 2. Extracts only the measurements on the mean and standard deviation for each measurement.") 
flush.console()

## read features
FeaturesData <- read.table("./data/features.txt")
dim(FeaturesData)  # 561*2
head(FeaturesData)

## leave only mean & std
FeaturesMenStd <- grep("mean\\(\\)|std\\(\\)", FeaturesData[, 2])
#View(FeaturesMenStd)
length(FeaturesMenStd) # 66

JoinData <- JoinData[, FeaturesMenStd]
head(JoinData)
dim(JoinData) # 10299*66

## tidy column names
names(JoinData) <- gsub("\\(\\)", "", FeaturesData[FeaturesMenStd, 2])           # set name & remove "()"
names(JoinData) <- gsub("^t", "time", names(JoinData), ignore.case = TRUE)       # time
names(JoinData) <- gsub("^f", "freq", names(JoinData), ignore.case = TRUE)       # treq
names(JoinData) <- gsub("BodyBody", "Body", names(JoinData), ignore.case = TRUE) # BodyBody
names(JoinData) <- gsub("mean", "Mean", names(JoinData), ignore.case = TRUE)     # Mean
names(JoinData) <- gsub("std", "Std", names(JoinData), ignore.case = TRUE)       # Std
names(JoinData) <- gsub("-", "", names(JoinData))                                # remove "-"
head(JoinData)

## #############################################################################
## Step 3. Uses descriptive activity names to name the activities 
## in the data set                                                            ##
## =============================================================================
print("Step 3. Uses descriptive activity names to name the activities in the data set.")
flush.console()

## read activity descriptions
activity <- read.table("./data/activity_labels.txt")
activity

## tidy activity descriptions
activity[, 2] <- gsub("_", " ", activity[, 2])
activity[, 2] <- tolower(activity[, 2])
activity[, 2] <- gsub("(^|[[:space:]])([[:alpha:]])", "\\1\\U\\2", activity[, 2], perl=TRUE)
activity[, 2] <- gsub(" ", "", activity[, 2])
activity

## this could have been in single statement, but "  ... hardly controlled ... "
## activity[, 2] <- gsub(" ", "", gsub("(^|[[:space:]])([[:alpha:]])", "\\1\\U\\2", tolower(gsub("_", " ", activity[, 2])), perl=TRUE))

## merge with dataset
activityLabel <- activity[JoinLabel[, 1], 2]
JoinLabel[, 1] <- activityLabel
names(JoinLabel) <- "activity"
table(JoinLabel)



## #############################################################################
## Step 4. Appropriately labels the data set with descriptive variable names. ##                                                            ##
## =============================================================================
print("Step 4. Appropriately labels the data set with descriptive variable names.")
flush.console()

names(JoinSubject) <- "subject"
TidyData <- cbind(JoinSubject, JoinLabel, JoinData)
dim(TidyData) # 10299*68
head(TidyData)

## export 1st file
write.table(TidyData, "uci-harusd-tidy-raw-data.txt", row.name=FALSE) # write out 1st dataset

## #############################################################################
## Step 5. From the data set in step 4, creates a second,                     ##
##         independent tidy data set with the average                         ##
##         of each variable for each activity and each subject.               ##
## =============================================================================
print("Step 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.")
flush.console()

library(data.table)
TidyData.t <- data.table(TidyData)
result <- TidyData.t[, lapply(.SD, mean), by=list(subject,activity)]
#head(result)
#View(result)

## export 2nd file
write.table(result, "uci-harusd-tidy-means-data.txt", row.name=FALSE, quote = FALSE) # write out 2nd dataset

print("=======================================================================")
print("Processing finished")
print("Tidy RAW   dataset is in file: uci-harusd-tidy-raw-data.txt")
print("Tidy MEANS dataset is in file: uci-harusd-tidy-means-data.txt")

