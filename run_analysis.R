#reading data from the source by writing paths
init_dir = getwd()
test_dir = paste(init_dir,"/UCI HAR Dataset/test",sep = "")
train_dir = paste(init_dir,"/UCI HAR Dataset/train",sep = "")
subj_test = read.table(paste(test_dir,"/subject_test.txt",sep = ""))
y_test = read.table(paste(test_dir,"/y_test.txt",sep = ""))
X_test = read.table(paste(test_dir,"/X_test.txt",sep = ""))
subj_train = read.table(paste(train_dir,"/subject_train.txt",sep = ""))
y_train = read.table(paste(train_dir,"/y_train.txt",sep = ""))
X_train = read.table(paste(train_dir,"/X_train.txt",sep = ""))
#merging data
x_mrg = rbind(X_train,X_test)
y_mrg = rbind(y_train,y_test)
subj_mrg = rbind(subj_train,subj_test)
#reading labels and features from source
lbl_dt = read.table(paste(init_dir,"/UCI HAR Dataset/activity_labels.txt",sep = ""))
features = read.table(paste(init_dir,"/UCI HAR Dataset/features.txt",sep = ""))
#modifying the data with dplyr
library(dplyr)
#selecting our mean and std variables from data
mn_std_var = grep("mean\\(\\)|std\\(\\)",features[,2])
x_mrg_var = x_mrg[,mn_std_var]

colnames(x_mrg_var) = features[mn_std_var,2]
#naming activities taken place and train set
y_mrg$label = factor(y_mrg$V1,labels = as.character(lbl_dt[,2]))
activitynm = y_mrg[,-1]
colnames(subj_mrg) = "subject"
fin_dat = cbind(x_mrg_var,activitynm,subj_mrg)
#finally calculating mean of each variable
mnd_dat <- fin_dat %>% group_by(fin_dat$subject,fin_dat$activitynm) %>% summarize_each(funs = mean)
mnd_final = select(mnd_dat,-activitynm,-subject)  
colnames(mnd_final)[1:2] = c("Subject","Activity")
write.table(mnd_final,file = paste(init_dir,"/finaldata.txt",sep = ""),row.names = FALSE)
