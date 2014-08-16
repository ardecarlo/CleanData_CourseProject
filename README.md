##CleanData_CourseProject

### Description
This repository contains a script for creating a tidy dataset from the University of California-Irvine Human Activity Recognition (HAR) dataset. This tidy dataset consists of:
 - Subject ID
 - Activity name
 - Variables (see Codebook.md)

###Relevant Files
 - README.md: Basic overview
 - run_analysis.R - The R script for generating the tiny data set
 - codebook.md: Summary of variables in the dataset

###Requirements
 - R version 3.1.1
 - RStudio 

###Instructions
 - Download the UCI HAR dataset from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
 - Place the files from this project in the working directory containing the dataset
 - Type "source('run_analysis.R')" and "run_analysis.r" into the RStudio command line
 - An output file called "tidy_har_data.txt" will appear in the working directory, containing the tidy dataset
