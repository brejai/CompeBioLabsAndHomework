chips <- 15
guests <- 10 
# lab step #3, 1.5 bags of chips for each person
# lab step #5
AmountPerPerson <- .4 
self <- c(7,6,5,1,2,3,4)
penny <- c(5,7,6,3,1,2,4)
jenny <- c(4,3,2,7,6,5,1)
lenny <- c(1,7,3,4,6,5,2)
stewie <- c(6,7,5,4,3,1,2)
pennyIV <- penny[4]
# access fourth element of penny
lennyIV <- lenny[4]
# fourth element of lenny 
AllRankings <- cbind(self,penny,jenny,lenny,stewie)
str(pennyIV)
str(penny)
str(AllRankings)
# the differences between the 3 data objects is that AllRankings is a matrix so its showing everything whereas pennyIV is just showing one ranking and penny is showing all of her rankings 
DataFrame1 <- as.data.frame(AllRankings)

DataFrame2 <- data.frame(self,penny,jenny,lenny,stewie)

# the difference between the c bind step and the data frame functions is very little, the row numbers have brakets in cbind

AllRankings == DataFrame1
dim(AllRankings)
str(AllRankings)
typeof(AllRankings)
#the == says the matrix and the data frame are the same, typeof says its couple and dim tells me there are 7 collums and 5 rows

EpisodeNumbers <- c("I","II","III","IV","V","VI","VII")
#episode names as roman numerals
row.names(AllRankings) <- EpisodeNumbers
AllRankings[3]
DataFrame1[4]
DataFrame1[4,]
DataFrame1[5,1]
DataFrame1[2,2]
DataFrame1[c(4,5,6),]
DataFrame1[c(2,5,7),]
DataFrame1[c(4,6),c(2,3,5)]
oldII <-AllRankings[2,4]
AllRankings[2,4] <- AllRankings[5,4]
AllRankings[5,4] <- oldII
AllRankings[3,2]
AllRankings["III", "penny"]
oldII <-AllRankings["II", "lenny"]
AllRankings["II", "lenny"] <- AllRankings["V", "lenny"]
AllRankings["V", "lenny"] <- oldII
DataFrame1$lenny[2]
oldII <-DataFrame1$lenny[2]
DataFrame1$lenny[2] <- DataFrame1$lenny[5]
DataFrame1$lenny[5] <- oldII
