# Project_Week4
## First of all
Samsung data is needed to be on the working directory for this code to work.
It also needs the dplyr package.

## Starting with the code
First, it will load the files from the working directory as data frames, these are X_train.txt, Y_train.txt, X_test.txt, Y_test.txt, subject_train.txt, subject_test.txt.
The data frames will be **X_train, Y_train, X_test, Y_test, subject_train, subject_test**.

```
example
d1 <- "path to the file"
X_train <- read.table(d1, check.names = FALSE)
```

## Merging of the sets

Then, it renames **Y_train** and **Y_test** variable to "activity". After that, it binds together **X_train** with **Y_train**, and **X_test** with **Y_test**. In both cases through cbind, which adds the column "activity" to the X data frames.
The data frames obtained will be **train** and **test**, respectively.

```
example
colnames(Y_train) <- "activity"
train <- cbind(X_train, Y_train)
```

Then, it renames **subject_train** and the **subject_test** variable to "subject", and again using cbind, it adds the column "subject" from the **subject_train** data frame to the **train** data frame, and the same for the **test** data frame, it adds the column "subject" from the **subject_test** data frame.
The data frames obtained will be **test_sub** and **train_sub**.
Using rbind, it combines the **train_sub** data frame with the **test_sub** data frame, obtainig a bigger data called **test_train**.

```
example
test_train <- rbind(test_sub, train_sub)
```

## Extraction of mean and standard deviation variables
Using the information about the columns names from the file features.txt from the Samsung data, it subsets all the variables from the **test_train** data frame, that corresponds either with the mean or the standard deviation.
Obtainig a data frame called **tt_mean_sdt**.

## Activity names
It converts the activity column to a character vector, then it changes the values from 1 to 6 by the names of the corresponding activities, listed in the activity_labels.txt file from the Samsung data.

```
example
tt_mean_sdt$activity <- as.character(tt_mean_sdt$activity)
tt_mean_sdt$activity[tt_mean_sdt$activity == "1"] <- "WALKING"
```

## Labeling variables
It changes the names of the variables (V1, V2, V3, ...), for more descriptive ones.

```
example
colnames(tt_mean_sdt)[colnames(tt_mean_sdt) == "V1"] <- "mean_tBody_AccelerometerXaxis"
```
## Creates a data set
It creates a new data set, from **tt_mean_std**. First it groups the **tt_mean_std** data by the variables "subject" and "activity". Then, using the dplyr package, it calculates the average of each variable. 
Lastly, converts the output to a data frame, called **data_frame**.
```
example
ordenada <- group_by(tt_mean_sdt , subject, activity)
library(dplyr)
ord_avg <- summarize_each(ordenada, mean)
data_frame <- as.data.frame(ord_avg)
```
