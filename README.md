# Week4_Assign
First created R project under git hub version control and linked it to R 
Next I have downloaded the data files from the site and placed them under the project folder
of the assingnment.
## Description of code variable name I have taken
1.	"act_lbl" - Activity labels derived from activty text file    
2.	"activitynm" - activity name after factorized with original y_mrg
3.	"features"   - features data extracted from original file
4.	"fin_dat"    -  final result obtained with corrected column names
5.	"fin_mrg"    - final merged data with some uncommon column names
6.	"init_dir"   - initial file directory
7.	"lbl_dt"     - labels data extracted from original text
8.	"mn_std_var" - column names matchinfg with mean and std
9.	"mnd_dat"    - final data of x_mrg matched with mn_std_var
10.	"mnd_final" - final mnd_std data with attached respective column names
11.	"subj_mrg"   - subject data merged
12.	"subj_test"  - original subject data extracted from text file
13.	"subj_train"  - original subject data extracted from train folder
14.	"test_dir"   -test folder directory
15.	"train_dir"  -train folder directory
16.	"trn_mrg"    - train data merge
17.	"tst_mrg"    - test data merge
18.	"txt"        - sample txt file
19.	"x_mrg"      - merged data of test and train datas of x
20.	"x_mrg_var" - x merged data after attaching with  mean and std variables
21.	"X_test"     -extracted from original text file
22.	"X_train" - extracted from original text file
23.	"y_mrg"  - merged data of test and train datas of y    
24.	"y_test"  - extracted from original text file  
25.	"y_train"- extracted from original text file
## Method description :
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
## Code description
1.#reading data from the source by writing paths
2.#merging data
3.#reading labels and features from source
4.#modifying the data with dplyr
5.#selecting our mean and std variables from data
6.#naming activities taken place and train set
7.#finally calculating mean of each variable
