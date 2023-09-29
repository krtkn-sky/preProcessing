dataset = read.csv('Data.csv')

dataset$Years = ifelse(is.na(dataset$Years),
ave(dataset$Years,FUN=function(x) mean(x, na.rm=TRUE)),
dataset$Years)

dataset$Earnings = ifelse(is.na(dataset$Earnings),
ave(dataset$Earnings,FUN=function(x) mean(x, na.rm=TRUE)),
dataset$Earnings)

#View(dataset)