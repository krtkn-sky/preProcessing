dataset = read.csv('Data.csv')

#Imputing

dataset$Years = ifelse(is.na(dataset$Years),
ave(dataset$Years,FUN=function(x) mean(x, na.rm=TRUE)),
dataset$Years)

dataset$Earnings = ifelse(is.na(dataset$Earnings),
ave(dataset$Earnings,FUN=function(x) mean(x, na.rm=TRUE)),
dataset$Earnings)

#Encoding

dataset$Location = factor(dataset$Location,
levels = c("New York", "Chicago", "London", "Toronto", "Los Angeles",
  "Sydney", "Melbourne", "Vancouver", "San Francisco", "Dubai", "Mumbai", "Singapore"),
  labels = c(1,2,3,4,5,6,7,8,9,10,11,12))

  dataset$Bought = factor(dataset$Bought,
levels = c("No","Yes"),
  labels = c(0,1))

library(caTools)
set.seed(123)

#splitting training and test data 80-20

split = sample.split(dataset$Bought,SplitRatio=0.8)
training_set = subset(dataset,split == TRUE)
test_set = subset(dataset,split == FALSE)

#Feature Scaling

training_set[,2:3] = scale(training_set[,2:3])
test_set[,2:3] = scale(test_set[,2:3])

#View(dataset)