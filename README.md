# Getting_And_Cleaning_Data
The script first adds the data.table library
After loading the libraries, the activity labels, column names, and feature are loaded.
The next step adds the test data set and test activity labels, as well as the subject test set. 
This step is repeated for all of the training data.
The column names for both the training and the test sets are then applied. 
The activity labels and subject test labels are then added to the data sets, and the test and training data is merged into the X_total table.
The tidy data set is then created by selecting only the columns that are related to the mean values and standard deviation values, and it is stored in the tidy_data table before writing the table into a text file. 
