d1 <- "C:/Users/User/Desktop/Data Science/Data Cleaning/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/X_train.txt"
X_train <- read.table(d1, check.names = FALSE)

d1y <- "C:/Users/User/Desktop/Data Science/Data Cleaning/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/Y_train.txt"
Y_train <- read.table(d1y, check.names = FALSE)

d4 <- "C:/Users/User/Desktop/Data Science/Data Cleaning/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/subject_train.txt"
subject_train <- read.table(d4, check.names = FALSE)

d2 <- "C:/Users/User/Desktop/Data Science/Data Cleaning/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/X_test.txt"
X_test <- read.table(d2,  check.names = FALSE)

d2y <- "C:/Users/User/Desktop/Data Science/Data Cleaning/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/Y_test.txt"
Y_test <- read.table(d2y,  check.names = FALSE)

d3 <- "C:/Users/User/Desktop/Data Science/Data Cleaning/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/subject_test.txt"
subject_test <- read.table(d3,  check.names = FALSE)

colnames(Y_train) <- "activity"
colnames(Y_test) <- "activity"

train <- cbind(X_train, Y_train)
test <- cbind(X_test, Y_test)

colnames(subject_train) <- "subject"
colnames(subject_test) <- "subject"

train_sub <- cbind(train, subject_train)
test_sub <- cbind(test, subject_test)

test_train <- rbind(test_sub, train_sub)

tt_mean_sdt <- test_train[, c(1:6, 41:46, 81:86, 121:126, 161:166, 201:202, 214:215, 227:228, 240:241, 253:254, 266:271, 345:350, 424:429, 503:504, 516:517, 529:530, 542:543, 562:563 )]

tt_mean_sdt$activity <- as.character(tt_mean_sdt$activity)
tt_mean_sdt$activity[tt_mean_sdt$activity == "1"] <- "WALKING"
tt_mean_sdt$activity[tt_mean_sdt$activity == "2"] <- "WALKING_UPSTAIRS"
tt_mean_sdt$activity[tt_mean_sdt$activity == "3"] <- "WALKING_DOWNSTAIRS"
tt_mean_sdt$activity[tt_mean_sdt$activity == "4"] <- "SITTING"
tt_mean_sdt$activity[tt_mean_sdt$activity == "5"] <- "STANDING"
tt_mean_sdt$activity[tt_mean_sdt$activity == "6"] <- "LAYING"

colnames(tt_mean_sdt)[colnames(tt_mean_sdt) == "V1"] <- "mean_tBody_AccelerometerXaxis"
colnames(tt_mean_sdt)[colnames(tt_mean_sdt) == "V2"] <- "mean_tBody_AccelerometerYaxis"
colnames(tt_mean_sdt)[colnames(tt_mean_sdt) == "V3"] <- "mean_tBody_AccelerometerZaxis"
colnames(tt_mean_sdt)[colnames(tt_mean_sdt) == "V4"] <- "std_ tbBdy_AccelerometerXaxis"
colnames(tt_mean_sdt)[colnames(tt_mean_sdt) == "V5"] <- "std_ tBody_AccelerometerYaxis"
colnames(tt_mean_sdt)[colnames(tt_mean_sdt) == "V6"] <- "std_ tBody_AccelerometerZaxis"
colnames(tt_mean_sdt)[colnames(tt_mean_sdt) == "V41"] <- "mean_tGravity_AccelerometerXaxis"
colnames(tt_mean_sdt)[colnames(tt_mean_sdt) == "V42"] <- "mean_tGravity_AccelerometerYaxis"
colnames(tt_mean_sdt)[colnames(tt_mean_sdt) == "V43"] <- "mean_tGravity_AccelerometerZaxis"
colnames(tt_mean_sdt)[colnames(tt_mean_sdt) == "V44"] <- "std_tGravity_AccelerometerXaxis"
colnames(tt_mean_sdt)[colnames(tt_mean_sdt) == "V45"] <- "std_tGravity_AccelerometerYaxis"
colnames(tt_mean_sdt)[colnames(tt_mean_sdt) == "V46"] <- "std_tGravity_AccelerometerZaxis"
colnames(tt_mean_sdt)[colnames(tt_mean_sdt) == "V81"] <- "mean_tBody_Accelerometer_JerkXaxis"
colnames(tt_mean_sdt)[colnames(tt_mean_sdt) == "V82"] <- "mean_tBody_Accelerometer_JerkYaxis"
colnames(tt_mean_sdt)[colnames(tt_mean_sdt) == "V83"] <- "mean_tBody_Accelerometer_JerkZaxis"
colnames(tt_mean_sdt)[colnames(tt_mean_sdt) == "V84"] <- "std_tBody_Accelerometer_JerkXaxis"
colnames(tt_mean_sdt)[colnames(tt_mean_sdt) == "V85"] <- "std_tBody_Accelerometer_JerkYaxis"
colnames(tt_mean_sdt)[colnames(tt_mean_sdt) == "V86"] <- "std_tBody_Accelerometer_JerkZaxis"
colnames(tt_mean_sdt)[colnames(tt_mean_sdt) == "V121"] <- "mean_tBody_GyroscopeXaxis"
colnames(tt_mean_sdt)[colnames(tt_mean_sdt) == "V122"] <- "mean_tBody_GyroscopeYaxis"
colnames(tt_mean_sdt)[colnames(tt_mean_sdt) == "V123"] <- "mean_tBody_GyroscopeZaxis"
colnames(tt_mean_sdt)[colnames(tt_mean_sdt) == "V124"] <- "std_tBody_GyroscopeXaxis"
colnames(tt_mean_sdt)[colnames(tt_mean_sdt) == "V125"] <- "std_tBody_GyroscopeYaxis"
colnames(tt_mean_sdt)[colnames(tt_mean_sdt) == "V126"] <- "std_tBody_GyroscopeZaxis"
colnames(tt_mean_sdt)[colnames(tt_mean_sdt) == "V161"] <- "mean_tBody_Gyroscope_JerkXaxis"
colnames(tt_mean_sdt)[colnames(tt_mean_sdt) == "V162"] <- "mean_tBody_Gyroscope_JerkYaxis"
colnames(tt_mean_sdt)[colnames(tt_mean_sdt) == "V162"] <- "mean_tBody_Gyroscope_JerkYaxis"
colnames(tt_mean_sdt)[colnames(tt_mean_sdt) == "V162"] <- "mean_tBody_Gyroscope_JerkYaxis"
colnames(tt_mean_sdt)[colnames(tt_mean_sdt) == "V163"] <- "mean_tBody_Gyroscope_JerkZaxis"
colnames(tt_mean_sdt)[colnames(tt_mean_sdt) == "V164"] <- "std_tBody_Gyroscope_JerkXaxis"
colnames(tt_mean_sdt)[colnames(tt_mean_sdt) == "V165"] <- "std_tBody_Gyroscope_JerkYaxis"
colnames(tt_mean_sdt)[colnames(tt_mean_sdt) == "V166"] <- "std_tBody_Gyroscope_JerkZaxis"
colnames(tt_mean_sdt)[colnames(tt_mean_sdt) == "V201"] <- "mean_tBody_Accelerometer_Mag"
colnames(tt_mean_sdt)[colnames(tt_mean_sdt) == "V202"] <- "std_tBody_Accelerometer_Mag"
colnames(tt_mean_sdt)[colnames(tt_mean_sdt) == "V214"] <- "mean_tGravity_Accelerometer_Mag"
colnames(tt_mean_sdt)[colnames(tt_mean_sdt) == "V215"] <- "std_tGravity_Accelerometer_Mag"
colnames(tt_mean_sdt)[colnames(tt_mean_sdt) == "V227"] <- "mean_tBody_Accelerometer_Jerk_Mag"
colnames(tt_mean_sdt)[colnames(tt_mean_sdt) == "V228"] <- "std_tBody_Accelerometer_Jerk_Mag"
colnames(tt_mean_sdt)[colnames(tt_mean_sdt) == "V240"] <- "mean_tBody_Gyroscope_Mag"
colnames(tt_mean_sdt)[colnames(tt_mean_sdt) == "V241"] <- "std_tBody_Gyroscope_Mag"
colnames(tt_mean_sdt)[colnames(tt_mean_sdt) == "V253"] <- "mean_tBody_Gyroscope_Jerk_Mag"
colnames(tt_mean_sdt)[colnames(tt_mean_sdt) == "V254"] <- "std_tBody_Gyroscope_Jerk_Mag"
colnames(tt_mean_sdt)[colnames(tt_mean_sdt) == "V266"] <- "mean_fBody_AccelerometerXaxis"
colnames(tt_mean_sdt)[colnames(tt_mean_sdt) == "V267"] <- "mean_fBody_AccelerometerYaxis"
colnames(tt_mean_sdt)[colnames(tt_mean_sdt) == "V268"] <- "mean_fBody_AccelerometerZaxis"
colnames(tt_mean_sdt)[colnames(tt_mean_sdt) == "V269"] <- "std_fBody_AccelerometerXaxis"
colnames(tt_mean_sdt)[colnames(tt_mean_sdt) == "V270"] <- "std_fBody_AccelerometerYaxis"
colnames(tt_mean_sdt)[colnames(tt_mean_sdt) == "V271"] <- "std_fBody_AccelerometerZaxis"
colnames(tt_mean_sdt)[colnames(tt_mean_sdt) == "V345"] <- "mean_fBody_Accelerometer_JerkXaxis"
colnames(tt_mean_sdt)[colnames(tt_mean_sdt) == "V346"] <- "mean_fBody_Accelerometer_JerkYaxis"
colnames(tt_mean_sdt)[colnames(tt_mean_sdt) == "V347"] <- "mean_fBody_Accelerometer_JerkZaxis"
colnames(tt_mean_sdt)[colnames(tt_mean_sdt) == "V348"] <- "std_fBody_Accelerometer_JerkXaxis"
colnames(tt_mean_sdt)[colnames(tt_mean_sdt) == "V349"] <- "std_fBody_Accelerometer_JerkYaxis"
colnames(tt_mean_sdt)[colnames(tt_mean_sdt) == "V350"] <- "std_fBody_Accelerometer_JerkZaxis"
colnames(tt_mean_sdt)[colnames(tt_mean_sdt) == "V424"] <- "mean_fBody_GyroscopeXaxis"
colnames(tt_mean_sdt)[colnames(tt_mean_sdt) == "V425"] <- "mean_fBody_GyroscopeYaxis"
colnames(tt_mean_sdt)[colnames(tt_mean_sdt) == "V426"] <- "mean_fBody_GyroscopeZaxis"
colnames(tt_mean_sdt)[colnames(tt_mean_sdt) == "V427"] <- "std_fBody_GyroscopeXaxis"
colnames(tt_mean_sdt)[colnames(tt_mean_sdt) == "V428"] <- "std_fBody_GyroscopeYaxis"
colnames(tt_mean_sdt)[colnames(tt_mean_sdt) == "V429"] <- "std_fBody_GyroscopeZaxis"
colnames(tt_mean_sdt)[colnames(tt_mean_sdt) == "V503"] <- "mean_fBody_Accelerometer_Mag"
colnames(tt_mean_sdt)[colnames(tt_mean_sdt) == "V504"] <- "std_fBody_Accelerometer_Mag"
colnames(tt_mean_sdt)[colnames(tt_mean_sdt) == "V516"] <- "mean_fBody_Accelerometer_Jerk_Mag"
colnames(tt_mean_sdt)[colnames(tt_mean_sdt) == "V517"] <- "std_fBody_Accelerometer_Jerk_Mag"
colnames(tt_mean_sdt)[colnames(tt_mean_sdt) == "V529"] <- "mean_fBody_Gyroscope_Mag"
colnames(tt_mean_sdt)[colnames(tt_mean_sdt) == "V530"] <- "std_fBody_Gyroscope_Mag"
colnames(tt_mean_sdt)[colnames(tt_mean_sdt) == "V542"] <- "mean_fBody_Gyroscope_Jerk_Mag"
colnames(tt_mean_sdt)[colnames(tt_mean_sdt) == "V543"] <- "std_fBody_Gyroscope_Jerk_Mag"

library(dplyr)

ordenada <- group_by(tt_mean_sdt , subject, activity)
ord_avg <- summarize_each(ordenada, mean)
data_frame <- as.data.frame(ord_avg)

