ERES_pixel<-read.csv("WT?_ERES_pixel.csv", header=TRUE)
ARS_pixel<-read.csv("WT?_ARS_pixel.csv", header=TRUE)

Label_X1<-X1_ERES5_Class2["Stack_Label_E"]
No.Atg8_X1<-X1_ERES5_Class2["No.Atg8"]
No.ERES_X1<-X1_ERES5_Class2["No.ERES"]
row<-nrow(X1_ERES5_Class2)
row_ERES_pixel<-nrow(ERES_pixel)
X1_ERES1um_ERES_pixel<-data.frame(matrix(,,19))

k=1
q=1
for(i in 1:row){
  for(j in 1:row_ERES_pixel){
    if(ERES_pixel[j,2]==Label_X1[i,]){
      if(ERES_pixel[j,3]==No.ERES_X1[i,]){
        X1_ERES1um_ERES_pixel[q,]<-X1_ERES5_Class2[i,]
        X1_ERES1um_ERES_pixel[q,18]<-ERES_pixel[j,4]
        X1_ERES1um_ERES_pixel[q,19]<-ERES_pixel[j,5]
        q=q+1
      }
    }
    k=k+1
  }
}
X1_ERES1um_ERES_pixel[,18]<-X1_ERES1um_ERES_pixel[,18]*0.1309
X1_ERES1um_ERES_pixel[,19]<-X1_ERES1um_ERES_pixel[,19]*0.1309
Distance_twopoints1<-data.frame(matrix(,row,1))

for(i in 1:nrow(X1_ERES1um_ERES_pixel)){
  Distance_twopoints1[i,]=sqrt((( X1_ERES1um_ERES_pixel[i,5]- X1_ERES1um_ERES_pixel[i,18])^2+( X1_ERES1um_ERES_pixel[i,6]- X1_ERES1um_ERES_pixel[i,19])^2))}

X1_ERES1um_ERES_pixel<-cbind(X1_ERES1um_ERES_pixel,Distance_twopoints1)

Label_X2<-X2_ERES5_Class2["Stack_Label_E"]

No.Atg8_X2<-X2_ERES5_Class2["No.Atg8"]
No.ERES_X2<-X2_ERES5_Class2["No.ERES"]
row<-nrow(X2_ERES5_Class2)
row_ERES_pixel<-nrow(ERES_pixel)

X2_ERES1um_ERES_pixel<-data.frame(matrix(,,19))

k=1
q=1
for(i in 1:row){
  for(j in 1:row_ERES_pixel){
    if(ERES_pixel[j,2]==Label_X2[i,]){
      if(ERES_pixel[j,3]==No.ERES_X2[i,]){
        X2_ERES1um_ERES_pixel[q,]<-X2_ERES5_Class2[i,]
        X2_ERES1um_ERES_pixel[q,18]<-ERES_pixel[j,4]
        X2_ERES1um_ERES_pixel[q,19]<-ERES_pixel[j,5]
        q=q+1
      }
    }
    k=k+1
  }
}
X2_ERES1um_ERES_pixel[,18]<-X2_ERES1um_ERES_pixel[,18]*0.1309
X2_ERES1um_ERES_pixel[,19]<-X2_ERES1um_ERES_pixel[,19]*0.1309
Distance_twopoints2<-data.frame(matrix(,row,1))

for(i in 1:nrow(X2_ERES1um_ERES_pixel)){
  Distance_twopoints2[i,]=sqrt((( X2_ERES1um_ERES_pixel[i,5]- X2_ERES1um_ERES_pixel[i,18])^2+( X2_ERES1um_ERES_pixel[i,6]- X2_ERES1um_ERES_pixel[i,19])^2))}

X2_ERES1um_ERES_pixel<-cbind(X2_ERES1um_ERES_pixel,Distance_twopoints2)

row<-nrow(X1_ERES1um_ERES_pixel)
No.Atg8_X1<-X1_ERES5_Class2["No.Atg8"]

Final1_D<-data.frame(matrix(,,20))
Final1_Dmin<-data.frame(matrix(,,20))
Final1_Dmin_bind<-data.frame(matrix(,,20))

k=1
for(i in 1:nrow(No.Atg8_X1)){
  for(j in 1:row){
    if(X1_ERES1um_ERES_pixel[j,3]==No.Atg8_X1[i,]){
      Final1_D[k,]=X1_ERES1um_ERES_pixel[j,]
      k=k+1
    }
  }
  Final1_Dmin<- Final1_D[which.min( Final1_D$X20),]
  Final1_Dmin_bind<-rbind( Final1_Dmin_bind, Final1_Dmin)
  Final1_D<-data.frame(matrix(,,20))
  k=1
}
Final1_Dmin_bind<- Final1_Dmin_bind[-1,]

colnames(Final1_Dmin_bind)<-c("Stack_Label_A","Stack_Label_E","No.Atg8","No.ERES","X_E1_atg8","Y_E1_atg8","X1um以内","Y1um以内","ARS_X","ARS_Y","ARS_Major_E1","ARS_Minor_E1","ARS_Angle_E1","ERES_Major_E1","ERES_Minor_E1","ERES_Angle_E1","Class","X_pixel","Y_pixel","minDistance")

row<-nrow(X2_ERES1um_ERES_pixel)

No.Atg8_X2<-X2_ERES5_Class2["No.Atg8"]

Final2_D<-data.frame(matrix(,,20))
Final2_Dmin<-data.frame(matrix(,,20))
Final2_Dmin_bind<-data.frame(matrix(,,20))

k=1
for(i in 1:nrow(No.Atg8_X2)){
  for(j in 1:row){
    if(X2_ERES1um_ERES_pixel[j,3]==No.Atg8_X2[i,]){
      Final2_D[k,]=X2_ERES1um_ERES_pixel[j,]
      k=k+1
    }
  }
  Final2_Dmin<- Final2_D[which.min( Final2_D$X20),]
  Final2_Dmin_bind<-rbind( Final2_Dmin_bind, Final2_Dmin)
  Final2_D<-data.frame(matrix(,,20))
  k=1
}
Final2_Dmin_bind<- Final2_Dmin_bind[-1,]

colnames(Final2_Dmin_bind)<-c("Stack_Label_A","Stack_Label_E","No.Atg8","No.ERES","X_E2_atg8","Y_E2_atg8","X1um以内","Y1um以内","ARS_X","ARS_Y","ARS_Major_E2","ARS_Minor_E2","ARS_Angle_E2","ERES_Major_E2","ERES_Minor_E2","ERES_Angle_E2","Class","X_pixel","Y_pixel","minDistance")

Final1<- Final1_Dmin_bind
Final2<- Final2_Dmin_bind

colnames(Final1)<-c("X1","X2","X3","X4","X5","X6","X7","X8","X9","X10","X11","X12","X13","X14","X15","X16","X17","X18","X19","X20")
colnames(Final2)<-c("X1","X2","X3","X4","X5","X6","X7","X8","X9","X10","X11","X12","X13","X14","X15","X16","X17","X18","X19","X20")
Final_Dmin_bind<-rbind( Final1, Final2)
library(dplyr)
library(magrittr)
arrange(Final_Dmin_bind,X3)
row<-nrow(Final_Dmin_bind)
No.Atg8_F<-Final_Dmin_bind["X3"]
FinalF_D<-data.frame(matrix(,,20))
FinalF_Dmin<-data.frame(matrix(,,20))
FinalF_Dmin_bind<-data.frame(matrix(,,20))

k=1
for(i in 1:nrow(No.Atg8_F)){
  for(j in 1:row){
    if(Final_Dmin_bind[j,3]==No.Atg8_F[i,]){
      FinalF_D[k,]=Final_Dmin_bind[j,]
      k=k+1
    }
  }
  FinalF_Dmin<- FinalF_D[which.min( FinalF_D$X20),]
  FinalF_Dmin_bind<-rbind( FinalF_Dmin_bind, FinalF_Dmin)
  FinalF_D<-data.frame(matrix(,,20))
  k=1
}
FinalF_Dmin_bind<- FinalF_Dmin_bind[-1,]
FinalF_Dmin_bind<- unique(FinalF_Dmin_bind)

colnames(FinalF_Dmin_bind)<-c("Stack_Label_A","Stack_Label_E","No.Atg8","No.ERES","X_E_atg8","Y_E_atg8","X1um以内","Y1um以内","ARS_X","ARS_Y","ARS_Major_E","ARS_Minor_E","ARS_Angle_E","ERES_Major_E","ERES_Minor_E","ERES_Angle_E","Class","X_pixel","Y_pixel","minDistance")

write.csv(FinalF_Dmin_bind, "/Users/seki/3.experiment/distance/test?/WT_distance2.csv", row.names=TRUE, quote=TRUE)


