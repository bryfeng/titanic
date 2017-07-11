
library(devtools)
library(dplyr)
library(tidyr)
titanic3<- read.csv("titanic_original.csv", header=TRUE, stringsAsFactors = FALSE)
View(titanic3)

titanic3$embarked[titanic3$embarked==""] <- "S"


titanic3$age[is.na(titanic3$age)] <- mean(titanic3$age, na.rm = TRUE)
titanic3$boat[titanic3$boat==""] <- "NONE"
titanic3 <- titanic3 %>% mutate(has_cabin_number = ifelse(titanic3$cabin =="",0,1))

