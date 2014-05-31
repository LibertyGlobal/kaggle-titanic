train <- read.table("./data/train.csv",sep=",",header=TRUE)
gendermodel <- read.table("./data/gendermodel.csv",sep=",",header=TRUE)
genderclassmodel <- read.table("./data/genderclassmodel.csv",sep=",",header=TRUE)
test <- read.table("./data/test.csv",sep=",",header=TRUE)
head(train)
head(gendermodel)
head(genderclassmodel)
head(test)

hist(train$Age,breaks=100,col="red")
prop.table(table(train$Survived))

test$Survived <- rep(0, 418)


submit <- data.frame(PassengerId = test$PassengerId, Survived = test$Survived)
write.csv(submit, file = "theyallperish.csv", row.names = FALSE)

