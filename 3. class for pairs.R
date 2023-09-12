ARS_X<-X1_ERES5 ["ARS_X"]
ARS_Y<-X1_ERES5 ["ARS_Y"]
ARS_X_E1<-X1_ERES5["X_E1_atg8"]
ARS_Y_E1<-X1_ERES5["Y_E1_atg8"]
ARS_X_E2<-X2_ERES5["X_E2_atg8"]
ARS_Y_E2<-X2_ERES5["Y_E2_atg8"]
ERES_X<-X1_ERES5 ["X1um以内"]
ERES_Y<-X1_ERES5 ["Y1um以内"]
Label<-X1_ERES5["Stack_Label_A"]
ARS_Major_E<-ARS_Major_E1
ARS_Minor_E<-ARS_Minor_E1
ARS_Angle_E<-ARS_Angle_E1
ERES_Major_E<-ERES_Major_E1
ERES_Minor_E<-ERES_Minor_E1
ERES_Angle_E<-ERES_Angle_E1
row<-nrow(X1_ERES5)
Angle_pair<-data.frame(matrix(,row,1))
K1<-data.frame(matrix(,row,1))
K2<-data.frame(matrix(,row,1))
K3<-data.frame(matrix(,row,1))
Angle1<-data.frame(matrix(,row,1))
Angle2<-data.frame(matrix(,row,1))

Class<-data.frame(matrix(,row,1))

for(i in 1:row){
  K1[i,]=(ERES_Y[i,]-ARS_Y_E1[i,] )/(ERES_X[i,]-ARS_X_E1[i,])
  K2[i,]=(ARS_Y[i,]-ARS_Y_E1[i,] )/(ARS_X[i,]-ARS_X_E1[i,])
  K3[i,]=(ERES_Y[i,]-ARS_Y[i,] )/(ERES_X[i,]-ARS_X[i,])
  Angle1[i,]=atan(abs(K2[i,]-K3[i,])/abs(1+K2[i,]*K3[i,]))*180/pi
  Angle2[i,]=atan(abs(K1[i,]-K3[i,])/abs(1+K1[i,]*K3[i,]))*180/pi
  Angle_pair[i,]=180-Angle1[i,]-Angle2[i,]
  if(is.na(Angle_pair[i,])||Angle_pair[i,] =='')
  {print('Missing')}
  else if (Angle_pair[i,]<90&&sqrt((ARS_X_E1[i,]-ERES_X[i,])^2+(ARS_Y_E1[i,]-ERES_Y[i,])^2)>0.2){
    Class[i,]=1
  }
  else{
    Class[i,]=2
  }
}

for(i in 1:row){
  if(is.na(Angle_pair[i,])||Angle_pair[i,] =='')
  {print('Missing')}
  else if(sqrt((ARS_X[i,]-ERES_X[i,])^2+(ARS_Y[i,]-ERES_Y[i,])^2)<ARS_Minor_E[i,]/2){
    Class[i,]=0
  }
}

X1_ERES5_Class<-cbind(X1_ERES5,Class)
colnames(X1_ERES5_Class)[17]<-"Class"
X1_ERES5_Class2<-subset(X1_ERES5_Class,X1_ERES5_Class$Class == "2")

ARS_X<-X2_ERES5 ["ARS_X"]
ARS_Y<-X2_ERES5 ["ARS_Y"]
ARS_X_E1<-X1_ERES5["X_E1_atg8"]
ARS_Y_E1<-X1_ERES5["Y_E1_atg8"]
ARS_X_E2<-X2_ERES5["X_E2_atg8"]
ARS_Y_E2<-X2_ERES5["Y_E2_atg8"]
ERES_X<-X2_ERES5 ["X1um以内"]
ERES_Y<-X2_ERES5 ["Y1um以内"]
Label<-X2_ERES5["Stack_Label_A"]
ARS_Major_E<-ARS_Major_E2
ARS_Minor_E<-ARS_Minor_E2
ARS_Angle_E<-ARS_Angle_E2
ERES_Major_E<-ERES_Major_E2
ERES_Minor_E<-ERES_Minor_E2
ERES_Angle_E<-ERES_Angle_E2
row<-nrow(X2_ERES5)
Angle_pair<-data.frame(matrix(,row,1))
K1<-data.frame(matrix(,row,1))
K2<-data.frame(matrix(,row,1))
K3<-data.frame(matrix(,row,1))
Angle1<-data.frame(matrix(,row,1))
Angle2<-data.frame(matrix(,row,1))

Class<-data.frame(matrix(,row,1))

for(i in 1:row){
  K1[i,]=(ERES_Y[i,]-ARS_Y_E2[i,] )/(ERES_X[i,]-ARS_X_E2[i,])
  K2[i,]=(ARS_Y[i,]-ARS_Y_E2[i,] )/(ARS_X[i,]-ARS_X_E2[i,])
  K3[i,]=(ERES_Y[i,]-ARS_Y[i,] )/(ERES_X[i,]-ARS_X[i,])
  Angle1[i,]=atan(abs(K2[i,]-K3[i,])/abs(1+K2[i,]*K3[i,]))*180/pi
  Angle2[i,]=atan(abs(K1[i,]-K3[i,])/abs(1+K1[i,]*K3[i,]))*180/pi
  Angle_pair[i,]=180-Angle1[i,]-Angle2[i,]
  if(is.na(Angle_pair[i,])||Angle_pair[i,] =='')
  {print('Missing')}
  else if (Angle_pair[i,]<90 &&sqrt((ARS_X_E2[i,]-ERES_X[i,])^2+(ARS_Y_E2[i,]-ERES_Y[i,])^2)>0.2){
    Class[i,]=1
  }
  else{
    Class[i,]=2
  }
}

for(i in 1:row){
  if(is.na(Angle_pair[i,])||Angle_pair[i,] =='')
  {print('Missing')}
  else if(sqrt((ARS_X[i,]-ERES_X[i,])^2+(ARS_Y[i,]-ERES_Y[i,])^2)<ARS_Minor_E[i,]/2){
    Class[i,]=0
  }
}

X2_ERES5_Class<-cbind(X2_ERES5,Class)
colnames(X2_ERES5_Class)[17]<-"Class"
X2_ERES5_Class2<-subset(X2_ERES5_Class,X2_ERES5_Class$Class == "2")