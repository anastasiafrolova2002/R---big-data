s = summary(Новая_форма[3:12])

s[1,]#min

s[3,]#median

s[4,]#mean

s[6,]#max

a = apply(Новая_форма[3:12],2,mean)

sort(s[4,],TRUE)#mean

colSums(Новая_форма[3:12]>7 | Новая_форма[3:12]<3)

barplot(a,col = "pink",border = "red",las=2,main = "Любимые напитки",
        
        ylab = "Средняя оценка", font=12)

hist(a,col = "pink",border = "red")
boxplot(Новая_форма[3:12],col = "pink",border = "red", main="Ящики с усами")
