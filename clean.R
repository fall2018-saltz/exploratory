
raw_data
data123=head(raw_data)
data123
dim(data123)
names(data123)
x<-raw_data$Gender
x

#importing library for ggplot2 to generate barcharts
library("ggplot2")
#7)	Calculate the number of murders per state


mergeData$numMurders <- as.integer(mergeData$population*mergeData$Murder/100000)
murdersPerState <- mergeData[,c(2,3,4,10)]
murdersPerState

#generating a barchart for number of murders per state 


bar1 <- ggplot(mergeData, aes(x=stateName, y=numMurders))
bar1 <- bar1 + geom_col()
bar1 <- bar1 + ggtitle("Bar chart for murders per each state")
bar1
