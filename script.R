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

#View(dataset)