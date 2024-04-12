# Задаем года, соответствующие вашим данным
years <- c(1908, 1994, 1998, 2002, 2006, 2010, 2014, 2018, 2022)
dev.off()
plot(sum_mix,type="l",col="darkmagenta",lty=1,,ylab="Количество наград",xlab="Год", xaxt = "n",lwd=2)
title(main="Количество медалей среди всех типов команд", col.main="lightslateblue")
lines(sum_man,type="l",col="cadetblue",lty=5, lwd=2)
lines(sum_woman,type="l",col="lightslateblue",lty=4, lwd=2)
par(xpd=TRUE)
legend("right", c("Микст", "Мужчины", "Женщины"), title = "Дисциплины", fill = c("darkmagenta", "cadetblue", "lightslateblue"), bty="n")
par(xpd=FALSE)
# Добавляем метки на ось x
axis(1, at = 1:length(years), labels = years)

###########
# количество первых мест для каждой команды по всем годам
first_places_man <- colSums(OlimpMAN[1, ])
first_places_woman <- colSums(OlimpWOMAN[1, ])
first_places_mix <- colSums(OlimpMIX[1, ])
first<-first_places_man+first_places_woman+first_places_mix
# Создаем график pie для количества первых мест среди всех команд
pie(first, col=rainbow(length(first)),
    labels = first,
    main = "Количество первых мест среди всех команд")

# Добавляем легенду
legend("topright", years, 
       fill = rainbow, title = "Года")
legend(1,1, first, cex = 0.8, fill=rainbow(length(first)))

dev.off()
# Создаем графики pie для количества первых мест отдельно для каждой команды
par(mfrow=c(1, 3))  # Разбиваем область для графиков на 1 строку и 3 столбца
pie(first_places_man, main = "Мужчины")
pie(first_places_woman, main = "Женщины")
pie(first_places_mix, main = "Смешанные")
##########

dev.off()
boxplot(OlimpMAN,col="cadetblue")
boxplot(OlimpWOMAN,col="lightslateblue")
boxplot(OlimpMIX,col="darkmagenta")


dev.off()
first <- first_places_man + first_places_woman + first_places_mix
colors <- rainbow(length(first))

pie(first, labels = years, col = colors, main = "Количество первых мест среди всех команд")

# Добавляем легенду
legend("topright", legend = years, fill = colors, title = "Годы")

# Увеличиваем шрифт легенды
par(cex = 0.8)

# Создаем графики pie для количества первых мест отдельно для каждой команды
par(mfrow = c(1, 3))  # Разбиваем область для графиков на 1 строку и 3 столбца
pie(first_places_man, col = rainbow(length(first_places_man)), main = "Мужчины")
pie(first_places_woman, col = rainbow(length(first_places_woman)), main = "Женщины")
pie(first_places_mix, col = rainbow(length(first_places_mix)), main = "Смешанные")


# Разбиваем окно на 2 строки и 2 столбца, чтобы разместить 4 графика
dev.off()
par(mfrow=c(2, 2))
# График для OlimpMAN
barplot(total_medals_man, main="Общее количество медалей у мужчин по годам", xlab="Год", ylab="Общее количество медалей", names.arg=colnames(OlimpMAN),col="#99FF33")

# График для OlimpWOMAN
barplot(total_medals_woman, main="Общее количество медалей у женщин по годам", xlab="Год", ylab="Общее количество медалей", names.arg=colnames(OlimpWOMAN),col="#CCFF99")

# График для OlimpMIX
barplot(total_medals_mix, main="Общее количество медалей в смешанных командах по годам", xlab="Год", ylab="Общее количество медалей", names.arg=colnames(OlimpMIX),col="#99FFCC")

# График для общего количества медалей по всем командам
barplot(total_medals_all, main="Общее количество медалей по годам (все команды)", xlab="Год", ylab="Общее количество медалей", names.arg=colnames(OlimpMAN),col="#CCFF33")

#


# График для OlimpWOMAN
#
#############################################!!!!
dev.off()
plot(total_medals_man, type="b",pch=19, col="red", xlab="Год", ylab="Кол-во мест", main = "График Кол-во 1-8 мест по годам\n мужчины")
plot(total_medals_woman, type="b",pch=19, col="orange", xlab="Год", ylab="Кол-во мест", main = "График Кол-во 1-8 мест по годам\n женщины")
plot(total_medals_mix, type="b",pch=19, col="tomato", xlab="Год", ylab="Кол-во мест", main = "График Кол-во 1-8 мест по годам\n парное")

plot(total_medals_all,type="b",pch=19, col="#99FF33", xlab="Год", ylab="Кол-во мест", main = "График Кол-во 1-8 мест по годам\n все дисциплины",lwd=2,xaxt = "n")
lines(total_medals_man, type="b",pch=19, col="red")
lines(total_medals_woman, type="b",pch=19, col="orange")
lines(total_medals_mix, type="b",pch=19, col="#FFCC33")
legend("topleft",c("Мужчины","Женщины","Микс","Общий счет"), fill=c("red", "orange","#FFCC33","#99FF33"), cex=0.7)
axis(1, at = 1:length(years), labels = years)
