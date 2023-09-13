setwd("/Users/seki/3.experiment/distance/test?/WT_ERES_pixel/")

filelist<-list.files(pattern=".*.csv")
library(gtools)
filelist <-mixedsort(filelist)
datalist <- lapply(filelist, function(x) read.csv(x,header=T,stringsAsFactors=F))
j<-length(filelist)

m<-rbind(datalist[[1]],datalist[[2]],datalist[[3]],datalist[[4]],datalist[[5]],datalist[[6]],datalist[[7]],datalist[[8]],datalist[[9]],datalist[[10]],datalist[[11]],datalist[[12]],datalist[[13]],datalist[[14]],datalist[[15]],datalist[[16]],datalist[[17]],datalist[[18]],datalist[[19]],datalist[[20]])

write.csv(m, "/Users/seki/3.experiment/distance/test?/WT_ERES_pixel.csv", row.names=TRUE, quote=TRUE)
