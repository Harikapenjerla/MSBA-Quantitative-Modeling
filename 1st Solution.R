
# First set working directory 
setwd("C:/Users/hpenj/OneDrive/Desktop")

# Check working directory
getwd()

#Read a file from Data of a store.I'm using Excel in Comma Delimited format (.CSV) format and create a new variable (MyData) assign using "<-". 
#Reading data using "read" function.
Mydata <- read.csv("Data.csv")

#To display different columns/parts of the data 
head(Mydata)

#To generate summary statistics of data we can use "Summary" function in general.
summary(Mydata)

#Plotting catagory column in my data 

graph <- table(Mydata$Category)

#To generate general graph
plot(Mydata$Category,col='orange') # "$" is to selct specific column from the data

#To generate Barplots
barplot(graph)
barplot(graph, ylab='Number of each catagorical items sold', xlab='Catagory',main='Barplot',col='green')
barplot(graph, xlab='Number of each catagorical items sold', ylab='Catagory',main='Barplot',col='yellow',horiz =TRUE) #To generate horizontal barplot.

#To generate Piechart
pie(graph)
pie(graph,main='Piechart',col=c("pink","purple","violet"))
box() #If we need an outline box
