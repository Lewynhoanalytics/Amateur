install.packages("tidyverse")
library(tidyverse)
library("RColorBrewer")
display.brewer.all()
percent(50)
library(wesanderson)
library(corrplot)
str(mtcars)
head(mtcars)
m<-cor(mtcars)
m
sales_by_category
df
corrplot(sales_by_category$sale, method=c("number"))
str(sales)
head(sales)
cor(sales$order_month,sales$order_day,method = "pearson")
df<-data.frame(sales_by_category[,2])
View(df)
corrplot(df,method = "number")
df1<-sales
View(df1)
df1<-is.numeric(df1)
colnames(sales)
str(df1)
df2<-sapply(sales, function(x)is.numeric(x))
View(df2)
df3<-sales
?apply
df3[,]<-apply(array, margin, ...)
install.packages("fastDummies")
library(fastDummies)
df
View(sales)
View(k1)
View(k1dummy)
k1<-sales[,c("category","sales")]
k1dummy<-dummy_cols(k1)
head(k1dummy)
str(k1dummy)
k1dummy<-vapply(k1dummy[,2:5], as.numeric,data.frame)
library(janitor)
k1dummy<-clean_names(k1dummy)
k1dummy<-k1dummy %>% 
  rename(furniture=2,office_supplies=3, technology=4)
k1dummy$category_technology<-as.numeric(k1dummy$category_technology)
corrplot(cork1dummy,method = "color",
         type = "upper",addCoef.col = "black",
         tl.col="black",
         diag = FALSE,
         order = "hclust")
cork1dummy<-cor(k1dummy)
sales_by_category
View(cork1dummy)
k1dummy<-k1dummy[,2:5]

#not mine
corrplot(cork1dummy, method="color",  
         type="lower", order="hclust", 
         addCoef.col = "black", # Add coefficient of correlation
         tl.col="black", tl.srt=45, #Text label color and rotation
         diag = FALSE
)

#trial 2- day & month
View(sales)
k2<-sales[,c("region","category")]
View(k2)
k2dummy<-dummy_cols(k2)
k2dummy<-clean_names(k2dummy)
View(k2dummy)
str(k2dummy)
dim(k2dummy)
k2dummy$category_technology<-as.numeric(k2dummy$category_technology)
k2dummy<-k2dummy[,3:9]
cork2dummy<-cor(k2dummy)
View(cork2dummy)
corrplot(cork2dummy,method = "color",
         diag = FALSE, tl.col = "black",
         addCoef.col = "black")
sum(duplicated(sales))
sales %>% 
  is.na() %>% 
  sum()
head(letters)
#learning
which(letters=="p")
head(iris)
which(sapply(iris, is.numeric))
length(m)