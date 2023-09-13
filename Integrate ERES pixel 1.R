setwd("/Users/seki/3.experiment/distance/test?/WT_ERES_pixel/j?")

filelist<-list.files(pattern=".*.csv")
library(gtools)
filelist <-mixedsort(filelist)
datalist <- lapply(filelist, function(x) read.csv(x,header=T,stringsAsFactors=F))
j<-length(filelist)

pixel<-data.frame(matrix(,,5))
colnames(pixel)<-c("Label","No.","X","Y","Value")
pixel<- pixel[-1,]

for(i in 1:length(filelist)){
  m<-cbind(1?,i,datalist[[i]])
  pixel<-rbind(pixel,m)
}
colnames(pixel)<-c("Label","No.","X","Y","Value")

write.csv(pixel, "/Users/seki/3.experiment/distance/test?/WT_ERES_pixel/j?.csv", row.names=TRUE, quote=TRUE)
