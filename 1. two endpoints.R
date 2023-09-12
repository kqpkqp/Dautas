setwd("/Users/seki/3.experiment/distance/test?/")
Atg8<-read.csv("WT?_ARS_Results.csv", header=TRUE)
XM<-Atg8["XM"]
YM<-Atg8["YM"]
row<-nrow(Atg8)
x1 = Atg8["FeretX"]*0.1309
y1 =Atg8["FeretY"]*0.1309
length = Atg8["Feret"]
degrees = Atg8["FeretAngle"]
Label = Atg8["Label"]
angle<-data.frame(matrix(,row,1))
x2<-data.frame(matrix(,row,1))
y2<-data.frame(matrix(,row,1))
Number<-Atg8["X"]
colnames(Number) <- c("No.")
colnames(x1) <- c("x1")
colnames(y1) <- c("y1")
colnames(XM) <- c("XM")
colnames(YM) <- c("YM")
colnames(Label) <- c("Label")

for(i in 1:row){
  if (degrees[i,]>90){
    degrees[i,]=degrees[i,]-180}
  angle[i,] = degrees[i,]*pi/180
  x2[i,] = x1[i,] + cos(angle[i,])*length[i,]
  y2[i,] = y1[i,] - sin(angle[i,])*length[i,]
}

colnames(x2) <- c("x2")
colnames(y2) <- c("y2")
Atg8_twopoints<-cbind(Number,Label,XM,YM,x1,y1,x2,y2)