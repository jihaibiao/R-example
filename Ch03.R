#------------------------------------------------------------#
# Chapter 28         数据获取                                        #
#------------------------------------------------------------#
# Creating a dataframe
patientID <- c(1, 2, 3, 4)                                                      #手动输入变量和数据
admdate <- c("10/15/2009","11/01/2009","10/21/2009","10/28/2009")           
age <- c(25, 34, 28, 52)
diabetes <- c("Type1", "Type2", "Type1", "Type1")
status <- c("Poor", "Improved", "Excellent", "Poor")
data <- data.frame(patientID, age, diabetes, status)                            #定义数据框
data
data2 <- data.frame(patientID=character(0), age=numeric(0),
                    diabetes=character(), status=character())                   #定义变量
data2 <- edit(data2)                                                            #edit函数，调用可以手动输入的文本编辑器,像spss,mac不行
fix(data2)
#Reading file from Database
install.packages("RODBC")


#------------------------------------------------------------#
# Chapter 29    读入文件                                            #
#------------------------------------------------------------#
x <- read.table ("input.txt")                                                   
x
head(x)                                                                         #截取头部/尾部6行
tail(x)
x <- read.table ("input.csv")                                                   #sep 分隔符
x <- read.table ("input.csv",sep=",")
x <- read.table ("input.csv",sep=",",header = T)                                #header = T 将第一行定义为变量名称
x <- read.table ("input.test.txt",sep=",",header = T,skip = 5)                  #skip 跳过前五行数据
x <- read.table ("input.csv",sep=",",header = T,nrows = 100)                    #nrow 只读取前100行
x <- read.table ("input.csv",sep=",",header = T,skip = 50,nrows = 100)          #读取51-100行
x <- read.table ("input.csv",sep=",",header = T,skip = 50,nrows = 100,
                 na.strings = " ")                                              #处理缺失值
x <- read.table ("input.csv",sep=",",header = T,skip = 50,nrows = 100,
                 stringsAsFactors = F)                                          #读取时是否将字符串转化为因子
?read.table
x <- read.csv ("input.csv",header = T)


#------------------------------------------------------------#
# Chapter 30     读入文件                                            #
#------------------------------------------------------------#
x <- read.table("https://codeload.github.com/mperdeck/LINQtoCSV/zip/master",  
           header = TRUE)                                                       #读取网络文件
install.packages("XML")
require(XML)
readHTMLTable("https://en.wikipedia.org/wiki/World_population",which=3)

RSiteSearch("Matlab")
x <- read.table(gzfile("input.txt.gz"))                                         #读取压缩文件
x <- read.table("clipboard")                                                    #读取剪切板信息
x <- readClipboard()
x <- readLines("input.txt",n=100)                                               #读取各行数据，返回字符串
world.series <- scan ("http://lib.stat.cmu.edu/datasets/wseries",skip=35,
                     nlines = 23,what = list(year=integer(0),pattern=character(0)))
x <- scan("scan.txt",what=list (character(3),numeric(0),numeric(0)))            #读取每行三个字符
x <- scan("scan.txt",what=list (X1=character(3),X2=numeric(0),X3=numeric(0)))

#------------------------------------------------------------#
# Chapter 31     写入文件                                            #
#------------------------------------------------------------#
?write
?write.table
?write.csv
getwd()                                                                         #显示当前工作路径
write.table (x,file=newfile.txt)                                                #写入数据框
write.table (x,file=newfile.csv,sep="\t")                                       #将x写入csv,
write.table(x,file = " c:////  ",sep = ",",row.names = FALSE)                   #写入特定工作路径   , 并且不添加行号
write.table (x,file=newfile.csv,sep="\t",quote=FALSE,append=FALSE,na="NA")      #append=FALSE 清空原来文件，如果是true，追加到源文件结尾 
write.table (x,file=gzfile (newfile.csv.gz),sep="\t",
             quote=FALSE,append=FALSE,na="NA")
library(foreign)
write.arff()

#------------------------------------------------------------#
# Chapter 32    读取EXCEL文件                                      #
#------------------------------------------------------------#
read.csv("input.csv",header = T)                                                #另存为csv,读取csv
install.packages("XLConnect")                                                   #配置java，读取excel的包
library(XLConnect)
?loadWorkbook
#Two step Read Excel File                                                       两步读取文件
ex <- loadWorkbook ("data.xlsx")                                                #读取xlsx
edata <- readWorksheet(ex,1)                                                    #ex：工作簿的名字，1：第一个工作表，保存为edata数据框
head(edata)
edata <- readWorksheet(ex,1,startRow=0,starCol=0,endRow=50,endCol=3)            #50行3列的数据

#One step Read Excel File                                                       一步读取文件
readWorksheetFromFile ("data.xlsx",1,startRow=0,starCol=0,
                       endRow=50,endCol=3,header=TRUE)
#Four step Wtire Excel File                                                     四步写入文件
wb <- loadWorkbook("file.xlsx",create=TRUE)
createSheet(wb,"Sheet 1")
writeWorksheet(wb,data=mtcars,sheet = "Sheet 1")
saveWorkbook()

#One step Wtire Excel File                                                      一步写入文件
writeWorksheetToFile("file.xlsx",data = mtcars,sheet = "Sheet 1")
vignette("XLConnect")

#Packages xlsx                                                                  读写xlsx
install.packages("xlsx")
library(xlsx)
rdata <- read.xlsx("data.xlsx",n=1,startRow = 1,endRow = 100)
write.xlsx(rdata,file = "rdata.xlsx",sheetName = "Sheet 1",append = F)
help(package="xlsx")

#------------------------------------------------------------#
# Chapter 33    读写R格式文件                                             #
#-----------------------------------------------------------#
?iris
head(iris)
getwd()
dir()
saveRDS(iris,file="iris.RDS")                                                   #RDS 代表数据集
rdsdata <- readRDS("C:/Users/wangtong/Desktop/RData/iris.RDS")
#Write RData file
load(file = "C:/Users/wangtong/Desktop/RData/Ch02.R")                           #打开Rdata文件
save(iris,iris3,file = "iris.Rdata")                                            #保存文件
save.image()                                                                    #保存生成的图片


#------------------------------------------------------------#
# Chapter 34   数据转换                                              #
#------------------------------------------------------------#
library(xlsx)
cars32 <- read.xlsx("mtcars.xlsx",sheetIndex = 1,header = T)
is.data.frame(cars32)                                                           #判断是否是数据框
is.data.frame(state.x77)
dstate.x77 <- as.data.frame(state.x77)                                          #矩阵转换为数据框
is.data.frame(dstate.x77)
as.matrix(data.frame(state.region,dstate.x77))                                  #数据框转化为矩阵，所有数据都会变成字符串
as.vector(dstate.x77)                                                           #转换为向量
as.factor(dstate.x77)                                                           #转换为因子
methods(is)                                                                     #所有is，as函数
methods(as)
x <- state.abb                                             
dim(x) <- c(5,10)                                                               #向量变为5行10列矩阵
x <- state.abb
as.factor(x)                                                                    #向量转换为因子
as.list(x)                                                                      #向量转换为列表
state <- data.frame(x,state.region,state.x77)                                   #向量，因子，矩阵共同构成了数据框
state$Income                                                                    #取出一个向量
state["Nevada",]                                                                #取出一行
unname(state)                                                                   #去除state的一行列名
unlist(state)                                                                   #转换为向量

#------------------------------------------------------------#
# Chapter 35        数据转换                                         #
#------------------------------------------------------------#
getwd()
list.files()
who <- read.csv("WHO.csv",header = T)                                           #读入文件
who1 <- who[c(1:50),c(1:10)]                                                    #取子集 前50行10列
who2 <- who[c(1,3,5,8),c(2,14,16,18)]                                           #取不连续的行和列
who3 <- who[which(who$Continent==7),]                                           #which函数 ，continent列数值为7的输出
who4 <- who[which(who$CountryID>50 & who$CountryID<=100),]                      #contryID在who子集中50-100之间的输出
#subset
?subset
who3=subset(who,who$CountryID>50 & who$CountryID<=100)                          #比较方便的方法
?sample
x <- 1:100
sample(x,30)                                                                    #随机抽样，30是抽样的个数，replace= TRUE是有放回的抽样，会出现重复
sample(x,30,replace = T)
sample(x,60,replace = F)
sort(sample(x,60,replace = T))                                                  #sort进行排序
who3=who[sample(who$CountryID,30,replace = F),]                                 #对数据框进行抽样

mtcars[,-1:-5]                                                                  #删除1-5列的数据
mtcars$mpg <- NULL                                                              #删除mpg列的数据                                              
USArrests
data.frame(state.division,USArrests)                                            #重新生成新的数据框
cbind(USArrests,state.division)                                                 #合并列
data1 <- head(USArrests,20)              
data2 <- tail(USArrests,20)
data3 <- head(cbind(USArrests,state.division),20)       
rbind(data3,data2)                                                              #合并行，列数要匹配

data1 <- head(USArrests,30)
data2 <- tail(USArrests,30)
data4 <- rbind(data1,data2)                                                     #有重复数据
rownames(data4)                                                                 #取出行名
length(rownames(data4))                                                         #行的数量
duplicated(data4)                                                               #判断是否重复
data4[duplicated(data4),]                                                       #取出重复部分
data4[!duplicated(data4),]                                                      #取出非重复部分
unique (data4)                                                                  #取出非重复部分（非常方便）
#------------------------------------------------------------#
# Chapter 36     数据转换                                            #
#------------------------------------------------------------#
mtcars
sractm <- t(mtcars)                                                             #转换行和列
letters
rev(letters)                                                                    #将letters向量顺序反转
womenwomen[rev(rownames(women)),]                                               #将数据框中women行名进行反转，并将其他内容跟随反转
transform(women, height = height*2.54)                                          #修改列中的所有值
transform(women, cm = height*2.54)                                              #多出一列
#sort order rank
sort(rivers)                                                                    #对向量进行拍讯
sort(state.name)                                                                #对字符串排序
rev(sort(rivers))                                                               #排序后反转
mtcars[sort(rownames(mtcars)),]                                                 #数据框排序
sort(rivers)
order (rivers)                                                                  #也是排序，返回索引值，不返回向量值
mtcars[order(mtcars$mpg),]                                                      #mtcars数据框按照mpg这列进行排序
mtcars[order(-mtcars$mpg),]                                                     #相反排序
order(mtcars$mpg,mtcars$disp)                                                   #对多个条件进行排序

#------------------------------------------------------------#
# Chapter 37   数据转换                                              #
#------------------------------------------------------------#
WorldPhones
worldphones <- as.data.frame(WorldPhones)                                       #矩阵转换为数据框
rs <- rowSums(worldphones)                                                      #计算总数
cm <- colMeans(worldphones)                                                     #计算每列平均数
total <- cbind(worldphones,Total=rs)                                            #将总和添加到最后一列
rbind(total,cm)                                                                 #平均值添加到最后一行

#apply series
apply
apply(WorldPhones,MARGIN = 1,FUN = sum)                                         #函数，（矩阵/数组/数据框，1代表行，2代表列，fun是求和/平均/方差/log或其他）
apply(WorldPhones,MARGIN = 2,FUN = mean)

#lapply and sapply
state.center
lapply(state.center,FUN = length)                                               #返回值是列表形式
sapply(state.center,FUN = length)                                               #返回值是矩阵或向量
#tapply
state.name
state.division
tapply(state.name,state.division,length)                                        #第二个state.division是因子，返回不同因子对应的长度

#scale and center                                                               #数据中心化和标准化-对每一列进行同比例的缩小或扩大
state.x77
heatmap(state.x77)                                                              #热图

x <- c(1,2,3,6,3)
mean(x)                                                                         #平均值
x - mean(x)                                                                     #中心化

sd(x)                                                                           #标准差
(x -mean(x))/sd(x)                                                              #标准化
?scale
scale(state.x77,center = T)                                                     #中心化处理
scale(state.x77,scale = T)                                                      #标准化处理
x <- scale(state.x77,scale = T,center = T)
heatmap(x)
#------------------------------------------------------------#
# Chapter 38     reshape2包                                            #
#------------------------------------------------------------#
x <- data.frame(k1 = c(NA,NA,3,4,5), k2 = c(1,NA,NA,4,5),
                data = 1:5)
y <- data.frame(k1 = c(NA,2,NA,4,5), k2 = c(NA,NA,3,4,5),
                data = 1:5)
merge(x, y, by = "k1")                                                          #通过k1进行合并
merge(x, y, by = c("k1","k2")) 
install.packages("reshape2")
?melt
?dcast
?acast
names(airquality) <- tolower(names(airquality))                                 #改成小写
head(airquality)

aql <- melt(airquality)                                                         #数据融合
head(aql)

aql <- melt(airquality, id.vars = c("month", "day"))
head(aql)

aqw <- dcast(aql, month + day ~ variable)
head(aqw)

head(airquality) 
dcast(aql, month ~ variable)
dcast(aql, month ~ variable, fun.aggregate = mean, na.rm = TRUE)

#------------------------------------------------------------#
# Chapter 39     tidyr包                                            #
#------------------------------------------------------------#
install.packages(c("tidyr","dplyr"))
tdata <- mtcars[1:10,1:3]
tdata <- data.frame(name=rownames(tdata),tdata)                                 #将行名添加到队列中
gather(tdata,key = "Key",value = "Value",cyl,disp,mpg)                          #将多列整合为一列
gather(tdata,key = "Key",value = "Value",cyl:disp)
gather(tdata,key = "Key",value = "Value",mpg,cyl,-disp)
spread(gdata,key = "Key",value = "Value")                                       #将一列拆分为多列
df <- data.frame(x = c(NA, "a.b", "a.d", "b.c"))
separate(df,col=x,into = c("A","B"))
df <- data.frame(x = c(NA, "a.b-c", "a-d", "b-c"))
separate(df,x,into = c("A","B"),sep = "-")
unite(x,col ="AB",A,B,sep="-")                                                  #连接数据框

#------------------------------------------------------------#
# Chapter 40      dplyr包                                           #
#------------------------------------------------------------#
library(dplyr)
ls("package:dplyr")
dplyr::filter (iris,Sepal.Length >7)                                            #过滤
dplyr::distinct(rbind(iris[1:10,],iris[1:15,]))                                 #去重
dplyr::slice(iris,10:15)                                                        #取出任意行
dplyr::sample_n(iris,10)                                                        #抽样
dplyr::sample_frac(iris,0.1)                                                    #按比例随机抽样
dplyr::arrange(iris,Sepal.Length)                                               #排序
dplyr::arrange(iris,desc(Sepal.Length))                                         #
summarise(iris,avg=mean(Sepal.Length))                                          #统计函数，求和/平均
summarise(iris,sum=sum(Sepal.Length))
head(mtcars,20) %>% tail()                                                      # %>%  control+shift+M,一个函数的输出作为另一个函数的输入
dplyr::group_by(iris,Species)
iris %>% group_by(Species) %>% summarise(avg=mean(
  Sepal.Width)) %>% arrange(avg)                                                #group_by(Species)分组
dplyr::mutate(iris,new=Sepal.Length+Petal.Length)                               #添加新的一列

#Connecte                                                                       #两个数据框的链接
a=data.frame(x1=c("A","B","C"),x2=c(1,2,3))                                     
b=data.frame(x1=c("A","B","D"),x3=c(T,F,T))
dplyr::left_join(a,b,by="x1")                                                   #左/右/全/半链接
dplyr::full_join(a,b,by="x1")
dplyr::semi_join(a,b,by="x1")
dplyr::anti_join(a,b,by="x1")

first <- slice(mtcars,1:20)    
mtcars <- mutate(mtcats,Model=rownames(mtcars))                                 
first <- slice(mtcars,1:20)
second <- slice (mtcars,10:30)
intersect(first, second)                                                        #取交集
union_all(first, second)                                                        #取并集
union(first, second)
setdiff(first, second)                                                          #取first的补集
setdiff(second, first) 


