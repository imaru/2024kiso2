fl<-choose.files() #
dat<-read.csv(fl)
boxplot(dat[,2:4], ylab='mean correct RT (msec)', xlab='Setsize', names=c('6','12','18'), range=0)
