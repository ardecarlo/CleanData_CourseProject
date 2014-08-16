run_analysis <- function (){
  
  # get x data
  xdata <- lapply (readLines("test/X_test.txt"), 
                  function (x) lapply(strsplit(x, " "), as.numeric))
  xdata <- c(xdata, lapply (readLines("train/X_train.txt"), 
                          function (x) lapply(strsplit(x, " "), as.numeric)))
  xdata <-lapply (xdata, function (x) x[[1]][!is.na(x[[1]])])
  
  # get activity IDs
  ydata <- readLines("test/y_test.txt")
  ydata <- c( ydata, readLines("train/y_train.txt"))
  ydata <- as.numeric(ydata)
  
  # get subject IDs
  subject <- readLines("test/subject_test.txt")
  subject <- c(subject, readLines("train/subject_train.txt"))
  subject <- as.numeric(subject)
  
  # get feature names
  features <- readLines("features.txt")
  features <- c("Subject", "Activity", features)
  feature_idx <- sort(c(grep("[Mm]ean",features), grep("[Ss]td",features)))
  feature_idx <- feature_idx[1:(length(feature_idx) - 7)]
  
  # repack as data frame
  df <- unique (cbind(subject, ydata))
  DataSet <- matrix(nrow=length(df[,1]), ncol=length(feature_idx) + 2)
  for (i in 1:length(df[,1])){
    idx <- (subject==df[i,1])&(ydata==df[i,2])
    test <- as.vector(xdata[idx]) # x data for this combo of subject and activity
    df2 <- matrix(nrow=length(test),ncol=length(test[[1]])) # repack as matrix
    for (j in 1:length(test)){
      df2[j,] <- test[[j]]
    }
    test <- apply(df2,2,mean) # aggregate by mean
    test <- test[feature_idx]
    DataSet[i,] <- c(df[i, ], test) 
  }
  DataSet <- as.data.frame(DataSet)
  
  # change Activity column to text labels
  names(DataSet) <- c("Subject", "Activity", features[feature_idx])
  activityLabels <- readLines("activity_labels.txt")
  activityLabels <- activityLabels[DataSet[,2]]
  DataSet$Activity <- activityLabels
  
  # write to .txt file
  write.table(DataSet, "tidy_har_data.txt", row.names=FALSE)
  return (DataSet)
}