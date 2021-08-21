sales=read.csv("C:\\Users\\Prathyu Lachireddy\\Desktop\\r language\\Sales.csv")
print(sales[1:10,])
#1
print(sales[sales$Price_in_thousands>40,])

#2
print(sales[sales$Engine_size>5,1:2])

#3
orderedlist=sales[order(sales$Fuel_efficiency),]
print(orderedlist[1:25,])
na.omit(sales)

#4 loop

#5
print(sales[sales$Sales_in_thousands>25],)

#6 loop

#7 and 8
aggregate(sales[,6],by=list(sales$Manufacturer),FUN=length)
aggregate(sales[,6],by=list(sales$Manufacturer),FUN=sum)

#9
aggregate(sales[,6],by=list(sales$Manufacturer),FUN=max)
aggregate(sales[,6],by=list(sales$Manufacturer),FUN=min)

#10
sorted=sort(sales$Sales_in_thousands,decreasing=FALSE)
print(sorted)


#graph for orange dataset
library(ggplot2)
Orange
h=ggplot(data=Orange,aes(x=Tree,y=age,group=1))+geom_line()
h+coord_flip()

#matrix

x=matrix(1:9,nrow=3,byrow=TRUE)
x

y=matrix(11:19,nrow=3,byrow=TRUE)
y

x+y

print(x[2,3])=5

c=cbind(c(3,2,1),c(3,4,6))
c

c=rbind(c(8,9,7),c(4,9,6))
c
