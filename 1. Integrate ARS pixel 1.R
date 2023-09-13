setwd("/Users/seki/3.experiment/distance/test?/WT_ARS_pixel/")
filelist<-list.files(pattern=".*.csv")
library(gtools)
filelist <-mixedsort(filelist)
datalist <- lapply(filelist, function(x) read.csv(x,header=T,stringsAsFactors=F))
j<-length(filelist)
pixel<-data.frame(matrix(,,4))
colnames(pixel)<-c("i","X","Y","Value")

for(i in 1:length(filelist)){
  m<-cbind(i,datalist[[i]])
  pixel<-rbind(pixel,m)
}
pixel<- pixel[-1,]

write.csv(pixel, "/Users/seki/3.experiment/distance/test?/WT_ARS_pixel/pixel.csv", row.names=TRUE, quote=TRUE)