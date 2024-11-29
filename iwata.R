fli<-file.choose()
idat<-read.csv(fli)

# 項目間平均を算出
idat$mean<-rowMeans(idat[,5:17])

# 平均値をt検定
t.test(idat$mean~idat$gorup)

# 項目6_1をt検定
t.test(idat$X6_1~idat$gorup)

source('anovakun_486.txt')
anovakun(idat[,c(3,5:17)],'AsB',2,13)
