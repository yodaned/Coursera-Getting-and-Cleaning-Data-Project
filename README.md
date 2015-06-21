# Getting and Cleaning Data Course Project Overview
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.  

#### Purpose of this README is to explain how the run_analysis.R script works to create a tidy dataset
#### NKumar, June 2015
#### Data Source: data collected from the accelerometers from Samsung Galaxy S smartphone.

* Data from source https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip downloaded and unzipped into the working directory.
* Ensure the unzipped data and the script run_analysis.R are both in the same directory.
* Type source("run_analysis.R") command in RStudio
** This script goes through various steps asked in the assignment: 
*** reads activity labels
*** reads in raw data [dim(trainData) # 7352*561; dim(testData) # 2947*561]
*** merges test and train data 
*** extracts only measurements on the mean and standard deviation for each measurement
*** use descriptive activity names to name the activities in the data set
*** appropriately label the dataset with descriptive names
*** and finally label with explanatory names and creating the tidy data set.
* The final output is a tidy data set: mergedData_avgbyactbysub.txt

## Other files in the repo include:
* CodeBook.md: information about the dataset and transformations made
* run_analysis.R: script to create the tidy dataset
* mergedData_avgbyactbysub.txt: the final tidy dataset



