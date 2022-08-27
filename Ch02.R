#------------------------------------------------------------#
# Chapter 17                                                 #
#------------------------------------------------------------#
euro
rivers
stat.abb
state.name
state.area
x <- c(1,2,3,4,5)
x
print(x)
y <- c("one","two","three")
z <- c(TRUE,FALSE,T,F)
c(1:100)
seq(1,100)
seq(1,100,by=2)
seq(1,100,length.out = 10)
rep(2,5)
rep(x,10)
rep(x,each=5)
a <- c(1,2,"one")
mode(a)
typeof(a)
mode(z)
a=2
b=3
c="hello,world"
d=TURE
x=c(1,2,3,4,5)
y=6:10
x*2+y
x[x>3]
rep(x,c(2,4,6,1,3))

#------------------------------------------------------------#
# Chapter 18                                                 #
#------------------------------------------------------------#
x <- c(1:100)
length(x)
# vector numberic index
x[1]
x[0]
x[-19]
x[4:18]
x[c(1,23,45,67,89)]
x[c(11,11,23,234,5,90,2)]
x[c(-2,3,4)]
# vector logic index
y <- c(1:10)
y[c(T,F,T,T,F,F,T,T,T,F,T)]
y[c(T)]
y[c(T,F)]
y[c(T,F,T)]
y[y>5]
y[y>5 & y<9]

#charactor vector
z <- c("one","two","three","four","five")
one %in% z
z[z %in% c("one","two")]

# vector name index
names(y) <- c("one","two","three","four","five","six","seven","eight","nine","ten")
euro
names(euro)

#change vector value
x <- 1:100
x[101] <- 101
v <- c(1,2,3)
v(c(4,5,6)) <- c(4,5,6)
v[20]=4
v
append(v,99,after = 5)
y[-c(1:3)]
y <- y[-c(1:3)]
v[2]=15

#------------------------------------------------------------#
# Chapter 19                                                 #
#------------------------------------------------------------#
x <- 1:10
x+1
x-3
x <- x+1
y <- seq(1,100,length.out = 10)
x+y
x*y
x**y
y%%x
y%/%x
z <- c(1,2)
x+z
x*z
z <- 1:3
x+z
x>5
x>y
c(1,2,3) %in% c(1,2,2,4,5,6)
x=y
x <- 1:10
y <- seq(1,100,length.out = 10)
x==y

#vector functions
x <- -5:5
abs(x)
sqrt(x)
log(16,n=2)
log10(10)
exp(x)
ceiling (c(-2.3,3.1415))
floor(c(-2.3,3.1415))
trunc(c(-2.3,3.1415))
round (c(-0.618,3.1415),digits=2)
signif (c(-0.0618,3.1415),digits=3)
sin(x);cos(x);tan(x)

vec <- 1:100
sum(vec)
max(vec)
min(vec)
range(vec)
mean(vec)
var(vec)
round (var(vec),digits=2)
sd(vec)    
prod(vec)
median(vec)
quantile(vec)
quantile (vec,c(0.4,0.5,0.8))

#get index
t <- c (1,2,2,5,7,9,6)
which.max (t) 
which.min(t)
which(t==7)
which(t>5)
t[which (t>5)]

#------------------------------------------------------------#
# Chapter 20                                                 #
#------------------------------------------------------------#
iris3
state.x77
heatmap(state.x77)
#Creating Matrices
x <- 1:20
m <- matrix(x,nrow = 4,ncol = 5)
m <- matrix(1:20,4,5)
matrix(x,nrow=4,ncol=6)
matrix(x,4,4)
matrix(x,3,3)
m <- matrix(x,nrow = 4,ncol = 5,byrow = TRUE)
rnames <- c("R1","R2","R3","R4")
cnames <- c("C1","C2","C3","C4","C5")
dimnames(m)=list (rnames,cnames)
dim(x)
dim(x) <- c(4,5)
x
#Creating an array
x <- 1:20
dim(x) <- c(2,2,5)
dim1 <- c("A1", "A2")
dim2 <- c("B1", "B2", "B3")
dim3 <- c("C1", "C2", "C3", "C4")
z <- array(1:24, c(2,3,4), dimnames=list(dim1, dim2, dim3))
z
Titanic

#Using matrix subscripts
m <- matrix(x,nrow = 4,ncol = 5)
m[1,2]
m[1,c(2,3,4)]
m[c(2,4),c(2,3)]
m[2,]
m[,2]
m[2]
m[-1,2]

#Using matrix names
m["R1","C2"]
state.x77[,"Income"]
state.x77["Alabama",]

#Matrix peration
m+1
m*2
m+m
n <- matrix(1:20,5,4)
m+n
colSums(m)
rowSums(m)
colMeans(m)
rowMeans(m)

n <- matrix (1:9,3,3)
t <- matrix (2:10,3,3)
n*t
n%*%t
diag(n)
diag(m)
a <- matrix(rnorm(16),4,4)
solve(a)
eigen(a)
dist(a)

#------------------------------------------------------------#
# Chapter 21                                                 #
#------------------------------------------------------------#
state.center
a <- 1:20
b <- matrix(1:24,4,6)
c=mtcars
d <- "This is a test list"
mlist <- list(a,b,c,d)
mlist <- list(first=a,second=b,third=c,fourth=d)

#List
mlist[1]
mlist[c(1,4)]
state.center[c("x","y")]
mlist$first
state.center$x
mlist[[1]]
class(mlist[2])
class(mlist[[2]])
mlist[5] <- iris
mlist[[5]] <- iris
mlist[5] <- NULL
mlist[[5]] <- NULL
#------------------------------------------------------------#
# Chapter 22                                                 #
#------------------------------------------------------------#
iris
mtcars
rock
state <- data.frame(state.name,state.abb,state.region,state.x77)
state[1]
state[c(2,4)]
state[,"state.abb"]
state["Alabama",]
women$height
plot(women$height,women$weight)
lm (weights~height,data = women)
attach(mtcars)
mpg
hp
detach(mtcars)
with(mtcars,{mpg})

#------------------------------------------------------------#
# Chapter 23 因子                                                 #
#------------------------------------------------------------#
mtcars$cyl
table(mtcars$cyl)
f <- factor(c("red","red","green","red","blue","green","blue","blue"))
week <- factor(c("Mon","Fri","Thu","Wed","Mon","Fri","Sun"))
week <- factor(c("Mon","Fri","Thu","Wed","Mon","Fri","Sun"),order = TRUE,
               levels = c("Mon","Tue","Wed","Thu","Fri","Sat","Sun"))           #因子输出排序
fcyl <- factor(mtcars$cyl)                                                      #将向量转化为因子
plot(mtcars$cyl)                                                                #向量生成散点图
plot(fcyl)                                                                      #因子生成条形图
num <- c(1:100)                                                                   
cut (num,c(seq(0,100,10)))                                                      #将连续型变量分割为n个水平的因子
state.division                                                                  #内置数据集
state.region

#------------------------------------------------------------#
# Chapter 24   缺失值-NA                                            #                  
#------------------------------------------------------------#
x <- 1:5
x[10] <- 100
x
1+NA
NA==0                                        
a <- c(NA,1:49)
sum(a)
mean(a)
sum(a,na.rm = TRUE)                                                             #跳过缺失值
mean(a,na.rm = TRUE)
mean(1:49)
install.packages("VIM")
library(VIM)
is.na(sleep)                                                                    #是否包含NA
colSums(is.na(sleep))                                                           #每一列的缺失值数目
rowSums(is.na(sleep))                                                           #每一行的缺失值数
c <- c(NA,1:20,NA,NA)
d <- na.omit(c)                                                                 #忽略缺失值 ，进行计算
na.omit(sleep)                                                                  #将包含NA的行都删除掉
1/0                                                                             #inf 正无穷
-1/0                                                                            #-inf负无穷
0/0                                                                             #NaN 不可能值
is.nan(0/0)                                                                     #是否是不可能值
is.infinite(1/0)                                                                #是否为无穷值

#------------------------------------------------------------#
# Chapter 25    字符串处理                                             #
#------------------------------------------------------------#
nchar ("Hello World")                                                           #返回字符串的长度
month.name
nchar(month.name)                                                               #返回每个元素字符串的个数
length(month.name)                                                              #向量中元素的个数
paste("Everybody","loves","stats")                                              #paste 合并为一个元素
paste("Everybody","loves","stats",sep = "-")                                    #使用符号连接每个向量合并为一个元素
names <- c("Moe","Larry","Curly")                          
paste(names,"love stats")                                                       #每个元素添加合并"love stats"，元素个数不变
substr(month.name,1,3)                                                          #提取每个元素的前3个字符
Mon <- substr(month.name,1,3)                     
toupper(Mon)                                                                    #将每个元素转换为大小写
tolower(Mon)
gsub("^(\\w)", "\\U\\1",tolower(Mon))                                           
gsub("^(\\w)", "\\U\\1",tolower(Mon),perl = TRUE)                               #首字母大写
gsub("^(\\w)", "\\L\\1",toupper(Mon),perl = TRUE)                               #首字母小写
x <- c("b","A+","AC")
grep ("A+",x,fixed=TRUE)                                                        #查找字符串,返回元素序列索引
grep ("A+",x,fixed=FALSE)
match("AC",x)                                                                   #match与grep相似
path <- "/usr/local/bin/R"
strsplit(path,"/")                                                              #字符串分割                                                   
strsplit(c(path,path),"/")

face <- 1:13
suit <- c("spades","clubs","hearts","diamonds")
outer(suit,face,FUN=paste)                                                      #生成两个两个向量的所有组合
outer(suit,face,FUN=paste,sep="-")
#------------------------------------------------------------#
# Chapter 26       时间序列分析                                          #
#------------------------------------------------------------#
sunspots
presidents
airquality
airmiles
Sys.Date()                                                                      #当前日期
a="2017-01-01"
as.Date(a)                                                             
b=as.Date(a,format="%Y-%m-%d")                                                  #设定日期，并定义格式        
class(b)
?strftime
seq(as.Date("2017-01-01"),as.Date("2017-07-05"),by=5)                           #生成时间序列

sales <- round(runif(48,min=50,max=100))                                        #round取整数，runif生成随机数
ts(sales,start = c(2010,5),end = c(2014,4),frequency = 1)                       #ts函数
ts(sales,start = c(2010,5),end = c(2014,4),frequency = 4)
ts(sales,start = c(2010,5),end = c(2014,4),frequency = 12)


#------------------------------------------------------------#
# Chapter 27      常见错误                                          #
#------------------------------------------------------------#
x <- (1,2,3)
x < -c(1,2,3)                                                                   #c代表向量
x <- matrix(c(1:20,seq(1,12,3),4,4)                                             #matrix代表矩阵
x <- c(one,two,three,4,5)
install.packages (gclus)                                                        #包要加引号
x <- c(1,2,3,)
state.x77[1]                                                                    #矩阵的行或者列要加上逗号
plot(women$weight,women$height,pch=2,)
a=5
b=8
a==b                                                                            #比较
a=b                                                                             #赋值
setwd("c:\Users\Default\")
x <- 1+2*3^4>5|| 15%%3>2                                                        


