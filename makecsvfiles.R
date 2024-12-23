library(qualtRics)

fl<-file.choose()
dat<-qualtRics::read_survey(fl)

cny<-c('6','12','18')
cnh<-c('6.high','12.high','18.high','6.low','12.low','18.low')

yA <- dat$Q1==1 & dat$Q2==1
hA <- dat$Q1==1 & dat$Q2==2
yB <- dat$Q1==2 & dat$Q2==1
hB <- dat$Q1==2 & dat$Q2==2

if (max(yA)){
  yART<-matrix(NA,nrow=sum(yA), ncol=3)
  yART[,1]<-t(dat[yA,]$`Q14#1_1_1`)
  yART[,2]<-t(dat[yA,]$`Q14#1_1_2`)
  yART[,3]<-t(dat[yA,]$`Q14#1_1_3`)
  id<-dat[yA,]$`Q3`
  yARTd<-data.frame(yART)
  #yARTd[yARTd>100]<-yARTd[yARTd>100]/1000
  colnames(yARTd)<-cny
  yACOR<-matrix(NA,nrow=sum(yA), ncol=3)
  yACOR[,1]<-t(dat[yA,]$`Q14#2_1_1`)
  yACOR[,2]<-t(dat[yA,]$`Q14#2_1_2`)
  yACOR[,3]<-t(dat[yA,]$`Q14#2_1_3`)
  yACORd<-data.frame(yACOR)
  colnames(yACORd)<-cny
  write.csv(cbind(id,yARTd,yACORd),row.names=F,file=paste(Sys.Date(),'GroupA_Yobi.csv',sep=''))
}

if (max(yB)){
  yBRT<-matrix(NA,nrow=sum(yB), ncol=3)
  yBRT[,1]<-t(dat[yB,]$`Q14#1_1_1`)
  yBRT[,2]<-t(dat[yB,]$`Q14#1_1_2`)
  yBRT[,3]<-t(dat[yB,]$`Q14#1_1_3`)
  id<-dat[yB,]$`Q3`
  yBRTd<-data.frame(yBRT)
  #yBRTd[yARTd>100]<-yBRTd[yBRTd>100]/1000
  colnames(yBRTd)<-cny
  yBCOR<-matrix(NA,nrow=sum(yB), ncol=3)
  yBCOR[,1]<-t(dat[yB,]$`Q14#2_1_1`)
  yBCOR[,2]<-t(dat[yB,]$`Q14#2_1_2`)
  yBCOR[,3]<-t(dat[yB,]$`Q14#2_1_3`)
  yBCORd<-data.frame(yBCOR)
  colnames(yBCORd)<-cny
  write.csv(cbind(id,yBRTd,yBCORd),row.names=F,file=paste(Sys.Date(),'GroupB_Yobi.csv',sep=''))
}

if (max(hA)){
  hART<-matrix(NA,nrow=sum(hA), ncol=6)
  hART[,1]<-t(dat[hA,]$`Q15#1_1_1`)
  hART[,2]<-t(dat[hA,]$`Q15#1_1_2`)
  hART[,3]<-t(dat[hA,]$`Q15#1_1_3`)
  hART[,4]<-t(dat[hA,]$`Q15#1_2_1`)
  hART[,5]<-t(dat[hA,]$`Q15#1_2_2`)
  hART[,6]<-t(dat[hA,]$`Q15#1_2_3`)
  id<-dat[hA,]$`Q3`
  hARTd<-data.frame(hART)
  #hARTd[hARTd>100]<-hARTd[hARTd>100]/1000
  colnames(hARTd)<-cnh
  hACOR<-matrix(NA,nrow=sum(hA), ncol=6)
  hACOR[,1]<-t(dat[hA,]$`Q15#2_1_1`)
  hACOR[,2]<-t(dat[hA,]$`Q15#2_1_2`)
  hACOR[,3]<-t(dat[hA,]$`Q15#2_1_3`)
  hACOR[,4]<-t(dat[hA,]$`Q15#2_2_1`)
  hACOR[,5]<-t(dat[hA,]$`Q15#2_2_2`)
  hACOR[,6]<-t(dat[hA,]$`Q15#2_2_3`)
  hACORd<-data.frame(hACOR)
  colnames(hACORd)<-cnh
  write.csv(cbind(id,hARTd,hACORd),row.names=F,file=paste(Sys.Date(),'GroupA_Hon.csv',sep=''))
}

if (max(hB)){
  hBRT<-matrix(NA,nrow=sum(hB), ncol=6)
  hBRT[,1]<-t(dat[hB,]$`Q15#1_1_1`)
  hBRT[,2]<-t(dat[hB,]$`Q15#1_1_2`)
  hBRT[,3]<-t(dat[hB,]$`Q15#1_1_3`)
  hBRT[,4]<-t(dat[hB,]$`Q15#1_2_1`)
  hBRT[,5]<-t(dat[hB,]$`Q15#1_2_2`)
  hBRT[,6]<-t(dat[hB,]$`Q15#1_2_3`)
  id<-dat[hB,]$`Q3`
  hBRTd<-data.frame(hBRT)
  #hBRTd[hBRTd>100]<-hBRTd[hBRTd>100]/1000
  colnames(hBRTd)<-cnh
  hBCOR<-matrix(NA,nrow=sum(hB), ncol=6)
  hBCOR[,1]<-t(dat[hB,]$`Q15#2_1_1`)
  hBCOR[,2]<-t(dat[hB,]$`Q15#2_1_2`)
  hBCOR[,3]<-t(dat[hB,]$`Q15#2_1_3`)
  hBCOR[,4]<-t(dat[hB,]$`Q15#2_2_1`)
  hBCOR[,5]<-t(dat[hB,]$`Q15#2_2_2`)
  hBCOR[,6]<-t(dat[hB,]$`Q15#2_2_3`)
  hBCORd<-data.frame(hBCOR)
  colnames(hBCORd)<-cnh
  write.csv(cbind(id,hBRTd,hBCORd),row.names=F,file=paste(Sys.Date(),'GroupB_Hon.csv',sep=''))
}

