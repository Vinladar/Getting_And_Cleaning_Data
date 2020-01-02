
	library(data.table)
	# Load the activity labels and feature names
	activity_labels <- read.table("activity_labels.txt")
	features <- read.table("features.txt")

	# Load the test data
	X_test <- read.table("test/X_test.txt")
	y_test <- read.table("test/y_test.txt")
	subject_test <- read.table("test/subject_test.txt")

	# Load the training data
	X_train <- read.table("train/X_train.txt")
	y_train <- read.table("train/y_train.txt")
	subject_train <- read.table("train/subject_train.txt")

	# Set column names
	colnames(X_test) <- features[[2]]
	colnames(X_train) <- features[[2]]