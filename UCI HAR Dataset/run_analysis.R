library(data.table)

# Load the activity labels and feature names.
activity_labels <- read.table("activity_labels.txt")
colnames(activity_labels) <- c("V1", "Activity")
features <- read.table("features.txt")

# Load the test data.
X_test <- read.table("test/X_test.txt")
y_test <- read.table("test/y_test.txt")
subject_test <- read.table("test/subject_test.txt")
activity_test <- merge(y_test, activity_labels, by = "V1")[2]

# Load the training data.
X_train <- read.table("train/X_train.txt")
y_train <- read.table("train/y_train.txt")
subject_train <- read.table("train/subject_train.txt")
activity_train <- merge(y_train, activity_labels, by = "V1")[2]

# Set column names.
colnames(X_test) <- features[[2]]
colnames(X_train) <- features[[2]]
colnames(subject_test) <- c("Subject")
colnames(subject_train) <- c("Subject")

# Add new columns to the existing tables.
X_test <- cbind(activity_test, X_test)
X_test <- cbind(subject_test, X_test)
X_train <- cbind(activity_train, X_train)
X_train <- cbind(subject_train, X_train)

# Combine test and training sets.
X_total <- rbind(X_test, X_train)

# Create the new data set with mean and standard deviation
tidy_data <- X_total[grep(".*mean\\(\\)*|.*std\\(\\)", names(X_total))]

# Write a txt file that contains the tidy data
write.table(tidy_data, "tidy_data.txt")
