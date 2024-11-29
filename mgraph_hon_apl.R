library(ggplot2)
library(tidyr)
fl<-choose.files() #
dat<-read.csv(fl)
rtdat<-dat[,2:7]
colnames(rtdat)<-c('06.high','12.high','18.high','06.low','12.low','18.low')
ldat<-pivot_longer(data=rtdat,cols=colnames(rtdat),values_to = 'value', names_sep = '\\.',names_to = c('ss','similarity'))
g<-ggplot(ldat, aes(x=ss, y=value, fill=similarity))+geom_boxplot()
plot(g)
