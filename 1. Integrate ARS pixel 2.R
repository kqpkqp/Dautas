setwd("/Users/seki/3.experiment/distance/test?/")
red<-read.csv("WT_ARS_Results.csv", header=TRUE)

Label<-red["Label"]
Label_pixel<-data.frame(matrix(,nrow(pixel),))
Number<-red["X"]
colnames(Number) <- c("No.")
row<-nrow(red)
structure<-data.frame(matrix(,,5))
colnames(structure)<-c("Label","j","X","Y","Value")

for(i in 1:row){
  for(j in 1:nrow(pixel)){
    if(pixel[j,1]==Number[i,]){
      Label_pixel[j,]=Label[i,]
      
    }
  }
}
pixel<-cbind(Label_pixel,pixel)
colnames(pixel)<-c("Label","No.","X","Y","Value")

write.csv(pixel, "/Users/seki/3.experiment/distance/test?/WT?_ARS_pixel.csv", row.names=TRUE, quote=TRUE)
