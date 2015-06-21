setwd("C:/Data/Personal/Jan2015-Dec2015/Coursera/workdir/GettingCleaningData/project")
library(plyr)

####################################
# Reading activity labels + features
####################################
activityLabels <- read.table("activity_labels.txt", col.names = c("ActivityId", "Activity"))
features <- read.table("features.txt", colClasses = c("character"))

######################
# Reading in raw data
######################
trainData <- read.table("train/X_train.txt")
trainLabel<- read.table("train/y_train.txt")
trainSubject <- read.table("train/subject_train.txt")
dim(trainData) # 7352*561
head(trainData)
table(trainLabel)

testData <- read.table("test/X_test.txt")
testLabel<- read.table("test/y_test.txt")
testSubject <- read.table("test/subject_test.txt")
dim(testData) # 2947*561
head(testData)
table(testLabel)

###############################################################
#1. Merging the test and train data sets and labeling the columns
###############################################################
training_data <- cbind(cbind(trainData, trainSubject), trainLabel)
test_data <- cbind(cbind(testData, testSubject), testLabel)
mergedData <- rbind(training_data, test_data)

sensor_labels <- rbind(rbind(features, c(562, "Subject")), c(563, "ActivityId"))[,2]
names(mergedData) <- sensor_labels

############################################################################################
#2.  Extract only the measurements on the mean and standard deviation for each measurement.
############################################################################################
mergedData_mean_std <- mergedData[,grepl("mean|std|Subject|ActivityId", names(mergedData))]

###########################################################################
#3.  Use descriptive activity names to name the activities in the data set
###########################################################################
mergedData_mean_std <- join(mergedData_mean_std, activityLabels, by = "ActivityId", match = "first")
mergedData_mean_std <- mergedData_mean_std[,-1]

##############################################################
#4. Appropriately label the data set with descriptive names.
##############################################################
# Remove parentheses
names(mergedData_mean_std) <- gsub('\\(|\\)',"",names(mergedData_mean_std), perl = TRUE)

# Make syntactically valid names
names(mergedData_mean_std) <- make.names(names(mergedData_mean_std))

# Labeling with explanatory names (from features_info)
names(mergedData_mean_std) <- gsub('Acc',"LinearAcceleration",names(mergedData_mean_std))
names(mergedData_mean_std) <- gsub('Gyro',"AngularVelocity",names(mergedData_mean_std))
names(mergedData_mean_std) <- gsub('Mag',"Magnitude",names(mergedData_mean_std))
names(mergedData_mean_std) <- gsub('^t',"TimeDomain.",names(mergedData_mean_std))
names(mergedData_mean_std) <- gsub('^f',"FrequencyDomain.",names(mergedData_mean_std))
names(mergedData_mean_std) <- gsub('\\.mean',".Mean",names(mergedData_mean_std))
names(mergedData_mean_std) <- gsub('\\.std',".StandardDeviation",names(mergedData_mean_std))
names(mergedData_mean_std) <- gsub('Freq\\.',"Frequency.",names(mergedData_mean_std))
names(mergedData_mean_std) <- gsub('Freq$',"Frequency",names(mergedData_mean_std))

######################################################################################################################
# 5. Finally, create an independent tidy data set with the average of each variable for each activity and each subject.
######################################################################################################################
mergedData_avgbyactbysub = ddply(mergedData_mean_std, c("Subject","Activity"), numcolwise(mean))
write.table(mergedData_avgbyactbysub, file = "mergedData_avgbyactbysub.txt", row.names=FALSE)
