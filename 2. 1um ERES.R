setwd("/Users/seki/3.experiment/distance/test?/")
ERES<-read.csv("WT?_ERES_Results.csv", header=TRUE)

Label<-Atg8_twopoints["Label"]
Label_ERES<-ERES["Label"]
XM<-Atg8_twopoints["XM"]
YM<-Atg8_twopoints["YM"]
Xeres<-ERES["XM"]
Yeres<-ERES["YM"]
X1_atg8<-Atg8_twopoints["x1"]
Y1_atg8<-Atg8_twopoints["y1"]
X2_atg8<-Atg8_twopoints["x2"]
Y2_atg8<-Atg8_twopoints["y2"]
ARS_Major<-Atg8["Major"]
ARS_Minor<-Atg8["Minor"]
ARS_Angle<-Atg8["Angle"]
ERES_Major<-ERES["Major"]
ERES_Minor<-ERES["Minor"]
ERES_Angle<-ERES["Angle"]
row<-nrow(Atg8_twopoints)
rowERES<-nrow(ERES)
Number<-Atg8_twopoints["No."]
Number_ERES<-ERES["X"]
Stack_Atg8<-data.frame(matrix(,row,1))
Stack_ERES<-data.frame(matrix(,row,1))
Number5_Atg8<-data.frame(matrix(,row,1))
Number5_ERES<-data.frame(matrix(,row,1))
X1o<-data.frame(matrix(,row,1))
Y1o<-data.frame(matrix(,row,1))
X2o<-data.frame(matrix(,row,1))
Y2o<-data.frame(matrix(,row,1))
Xeres5<-data.frame(matrix(,row,1))
Yeres5<-data.frame(matrix(,row,1))
ARS_X<-data.frame(matrix(,row,1))
ARS_Y<-data.frame(matrix(,row,1))
ARS_Major_E1<-data.frame(matrix(,row,1))
ARS_Minor_E1<-data.frame(matrix(,row,1))
ARS_Angle_E1<-data.frame(matrix(,row,1))
ERES_Major_E1<-data.frame(matrix(,row,1))
ERES_Minor_E1<-data.frame(matrix(,row,1))
ERES_Angle_E1<-data.frame(matrix(,row,1))

k=1
for(i in 1:row){
  for(j in 1:rowERES) {
    if( Label_ERES[j,]==Label[i,]){
      if ((X1_atg8[i,]-1<=Xeres[j,]&&Xeres[j,]<=X1_atg8[i,]+1)&&(Y1_atg8[i,]-1<=Yeres[j,]&&Yeres[j,]<=Y1_atg8[i,]+1)&& ((X1_atg8[i,]- Xeres[j,])^2+(Y1_atg8[i,]-Yeres[j,])^2)<=((X2_atg8[i,]- Xeres[j,])^2+(Y2_atg8[i,]- Yeres[j,])^2)){
        Stack_Atg8[k,]=Label[i,]
        Stack_ERES[k,]=Label_ERES[j,]
        X1o[k,]=X1_atg8[i,]
        Y1o[k,]=Y1_atg8[i,]
        Number5_Atg8[k,]=Number[i,]
        Number5_ERES[k,]=Number_ERES[j,]
        Xeres5[k,]=Xeres[j,]
        Yeres5[k,]=Yeres[j,]
        ARS_X[k,]<-XM[i,]
        ARS_Y[k,]<-YM[i,]
        ARS_Major_E1[k,]=ARS_Major[i,]
        ARS_Minor_E1[k,]=ARS_Minor[i,]
        ARS_Angle_E1[k,]=ARS_Angle[i,]
        ERES_Major_E1[k,]=ERES_Major[j,]
        ERES_Minor_E1[k,]=ERES_Minor[j,]
        ERES_Angle_E1[k,]=ERES_Angle[j,]
        k=k+1
      }
    }
  }
}
X1_ERES5<-cbind(Stack_Atg8,Stack_ERES,Number5_Atg8,Number5_ERES,X1o,Y1o,Xeres5, Yeres5, ARS_X, ARS_Y,ARS_Major_E1, ARS_Minor_E1,ARS_Angle_E1, ERES_Major_E1,ERES_Minor_E1,ERES_Angle_E1)
colnames(X1_ERES5)<-c("Stack_Label_A","Stack_Label_E","No.Atg8","No.ERES","X_E1_atg8","Y_E1_atg8","X1um以内","Y1um以内","ARS_X","ARS_Y","ARS_Major_E1", "ARS_Minor_E1","ARS_Angle_E1", "ERES_Major_E1","ERES_Minor_E1","ERES_Angle_E1")

Label<-Atg8_twopoints["Label"]
Label_ERES<-ERES["Label"]
XM<-Atg8_twopoints["XM"]
YM<-Atg8_twopoints["YM"]
Xeres<-ERES["XM"]
Yeres<-ERES["YM"]
X1_atg8<-Atg8_twopoints["x1"]
Y1_atg8<-Atg8_twopoints["y1"]
X2_atg8<-Atg8_twopoints["x2"]
Y2_atg8<-Atg8_twopoints["y2"]
ARS_Major<-Atg8["Major"]
ARS_Minor<-Atg8["Minor"]
ARS_Angle<-Atg8["Angle"]
ERES_Major<-ERES["Major"]
ERES_Minor<-ERES["Minor"]
ERES_Angle<-ERES["Angle"]
row<-nrow(Atg8_twopoints)
rowERES<-nrow(ERES)
Number<-Atg8_twopoints["No."]
Number_ERES<-ERES["X"]
Stack_Atg8<-data.frame(matrix(,row,1))
Stack_ERES<-data.frame(matrix(,row,1))
Number5_Atg8<-data.frame(matrix(,row,1))
Number5_ERES<-data.frame(matrix(,row,1))
X1o<-data.frame(matrix(,row,1))
Y1o<-data.frame(matrix(,row,1))
X2o<-data.frame(matrix(,row,1))
Y2o<-data.frame(matrix(,row,1))
Xeres5<-data.frame(matrix(,row,1))
Yeres5<-data.frame(matrix(,row,1))
ARS_X<-data.frame(matrix(,row,1))
ARS_Y<-data.frame(matrix(,row,1))
ARS_Major_E2<-data.frame(matrix(,row,1))
ARS_Minor_E2<-data.frame(matrix(,row,1))
ARS_Angle_E2<-data.frame(matrix(,row,1))
ERES_Major_E2<-data.frame(matrix(,row,1))
ERES_Minor_E2<-data.frame(matrix(,row,1))
ERES_Angle_E2<-data.frame(matrix(,row,1))

k=1
for(i in 1:row){
  for(j in 1:rowERES) {
    if( Label_ERES[j,]==Label[i,]){
      if ((X2_atg8[i,]-1<=Xeres[j,]&&Xeres[j,]<=X2_atg8[i,]+1)&&(Y2_atg8[i,]-1<=Yeres[j,]&&Yeres[j,]<=Y2_atg8[i,]+1) && ((X2_atg8[i,]- Xeres[j,])^2+(Y2_atg8[i,]-Yeres[j,])^2)<=((X1_atg8[i,]- Xeres[j,])^2+(Y1_atg8[i,]- Yeres[j,])^2)){
        Stack_Atg8[k,]=Label[i,]
        Stack_ERES[k,]=Label_ERES[j,]
        X2o[k,]=X2_atg8[i,]
        Y2o[k,]=Y2_atg8[i,]
        Number5_Atg8[k,]=Number[i,]
        Number5_ERES[k,]=Number_ERES[j,]
        Xeres5[k,]=Xeres[j,]
        Yeres5[k,]=Yeres[j,]
        ARS_X[k,]<-XM[i,]
        ARS_Y[k,]<-YM[i,]
        ARS_Major_E2[k,]=ARS_Major[i,]
        ARS_Minor_E2[k,]=ARS_Minor[i,]
        ARS_Angle_E2[k,]=ARS_Angle[i,]
        ERES_Major_E2[k,]=ERES_Major[j,]
        ERES_Minor_E2[k,]=ERES_Minor[j,]
        ERES_Angle_E2[k,]=ERES_Angle[j,]
        k=k+1
      }
    }
  }
}
X2_ERES5<-cbind(Stack_Atg8,Stack_ERES,Number5_Atg8,Number5_ERES,X2o,Y2o,Xeres5, Yeres5, ARS_X, ARS_Y, ARS_Major_E2, ARS_Minor_E2,ARS_Angle_E2, ERES_Major_E2,ERES_Minor_E2,ERES_Angle_E2)
colnames(X2_ERES5)<-c("Stack_Label_A","Stack_Label_E","No.Atg8","No.ERES", "X_E2_atg8","Y_E2_atg8","X1um以内","Y1um以内", "ARS_X","ARS_Y","ARS_Major_E2", "ARS_Minor_E2","ARS_Angle_E2", "ERES_Major_E2","ERES_Minor_E2","ERES_Angle_E2")


