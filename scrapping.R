install.packages("rvest")
install.packages("dplyr")
library(rvest)
library(dplyr)

time_link = "https://killedbygoogle.com/"
time_page = read_html(time_link)
time_table = time_page %>% html_nodes(".e1hf78cm1") %>% html_text()
time_table

product_link = "https://killedbygoogle.com/"
product_page = read_html(product_link)
product_table = product_page %>% html_nodes(".e1hf78cm5") %>% html_text()
product_table

desk_link = "https://killedbygoogle.com/"
desk_page = read_html(desk_link)
desk_table = desk_page %>% html_nodes(".e1hf78cm2") %>% html_text()
desk_table

killed_by_google = data.frame(time_table,product_table,desk_table)

write.csv(killed_by_google,"C:\\Users\\User\\Desktop\\killed_by_google.csv",row.names = FALSE)



time1_link = "https://www.numbeo.com/quality-of-life/rankings_by_country.jsp?title=2021"
time1_page = read_html(time1_link)
time1_page
time1_table = time1_page %>% html_nodes("td.cityOrCountryInIndicesTable") %>% html_text()
time1_table

musem_link = "https://kudago.com/spb/list/33-luchshih-muzeya-peterburga/"
musem_page = read_html(musem_link)
musem_table = musem_page %>% html_nodes(".post-list-item-title") %>% html_text()
musem_table

musem_info_link = "https://kudago.com/spb/list/33-luchshih-muzeya-peterburga/"
musem_info_page = read_html(musem_info_link)
musem_info_table = musem_info_page %>% html_nodes("div.post-list-item-description") %>% html_text()
musem_info_table

musem_img_link = "https://kudago.com/spb/list/33-luchshih-muzeya-peterburga/"
musem_img_page = read_html(musem_img_link)
musem_img_table = musem_img_page %>% html_nodes("img.post-list-item-preview-image") %>% html_name()
musem_img_table



time2_link = "https://www.numbeo.com/quality-of-life/rankings_by_country.jsp?title=2021"
time2_page = read_html(time2_link)
time2_page
time2_table = time2_page %>% html_nodes("tbody") %>% html_text()
time2_table

time3_table = time2_page %>% html_nodes("stripe row-border order-column") %>% html_text()
time3_table

table_data = data.frame(time3_table)
write.csv(table_data,"C:\\Users\\User\\Desktop\\table_dataNEW1.csv",row.names = TRUE)
  
url= read_html('https://www.numbeo.com/quality-of-life/rankings_by_country.jsp?title=2021')
nodes = html_nodes(url, 'table')
nodes

df1 = html_table(nodes[[1]])%>%as.data.frame()
df2 = html_table(nodes[[2]])%>%as.data.frame()
df1
fix(df2)

df2

df2[-1]
bk=df2[-1]
plot(df2[-1])
plot(bk[-1])
boxplot(bk[-1],col="magenta")
cc<-c(bk[-1])
barplot(cc,1)

barplot(df2[-2]$`Quality of Life Index`)
df2[2]
countrys <- c(df2[2])
dev.off()
title(main="Качество жизни", col.main="lightslateblue")

par(xpd=TRUE)
par(xpd=FALSE)
# Добавляем метки на ось x
axis(1, at = 1:length(countrys), labels = countrys)

df2[10,]

barplot(df2[-2]$`Purchasing Power Index`)
barplot(df2[-2]$`Safety Index`)
barplot(df2[-2]$`Cost of Living Index`)
barplot(df2[-2]$`Property Price to Income Ratio`)
barplot(df2[-2]$`Traffic Commute Time Index`)
barplot(df2[-2]$`Pollution Index`)
barplot(df2[-2]$`Climate Index`)


a<-"a<-0;cat(sub(0,deparse(a),a))";cat(sub(0,deparse(a),a))
