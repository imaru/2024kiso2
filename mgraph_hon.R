fl<-choose.files() # データファイルを選択する
dat<-read.csv(fl)
rtdat<-dat[,2:7]
par(mfrow=c(1,2))
boxplot(rtdat[,1:3], ylab='mean correct RT (msec)', xlab='Setsize', names=c('6','12','18'), ylim=c(0,max(rtdat)), main='high similarity', range=0)
boxplot(rtdat[,4:6], ylab='mean correct RT (msec)', xlab='Setsize', names=c('6','12','18'), ylim=c(0,max(rtdat)), main='low similarity', range=0)
