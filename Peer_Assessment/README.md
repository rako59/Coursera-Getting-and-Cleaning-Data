{Coursera Getting and Cleaning Data Assessment #2}

 
{}I. Installation
1. Create a project directory for this assessment (my was:  "c:\coursera_assesment")
2. Download the script run_analysis.R to the project directory
3. a) Download the raw data from 
      {https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip} the project directory.
   b) Unzip it - this will create a new (sub)folder "UCI HAR Dataset".
   d) Rename the folder with "data".
   e) You can delete the zip file after this step. 
   d) The project directory structure should look like this (shown first 2 levels only):

  c:\coursera_assesment
   |- [data] 
   |   |-  [test] 
   |   |-  [train] 
   |   |-  activity_labels.txt
   |   |-  features.txt
   |   |-  features_info.txt
   |   |-  README.txt
   |- run_analysis.R

{}Dependencies
  * The script run_analysis.R depends on the package "data.table". 
    If you have not installed them, you will be prompted a choice to do so.

{}Running the analysis
1. Change the working directory in R to the installation directory (my was:  "c:\coursera_assesment").
2. Source the script run_analysis.R in R: source("run_analysis.R")
3. Two datasets will be written to your working directory: 
   a) uci-harusd-tidy-means-data.txt   (tidy data with means, created after Step 5.)
   b) uci-harusd-tidy-raw-data.txt     (tidy joined data, created after Step 4.)

{}Codebook
  * Information about the datasets is provided in CodeBook.md.

{}Code
  * The code contains detailed commments explaining the steps in which the original data was transformed.