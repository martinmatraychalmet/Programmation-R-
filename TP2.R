Exercice 1 : 

1. 
setwd("C:/Users/mmatraychalmet/Documents/TP 2")
df = read.csv("fao.csv", sep=";", dec=",", header=TRUE)

2.
nrow(df)

3. 
summary(df)


Exercice 2 : 

1. 
mean(df$Dispo_alim, na.rm=TRUE)

2. 
sum(df$Population, na.rm=TRUE)

3.
sd(df$Export_viande, na.rm=TRUE)
sd(df$Import_viande, na.rm=TRUE)

4. 
median(df$Prod_viande, na.rm=TRUE)

5. 
quantile(df$Dispo_alim)

6.
quantile(df$Import_viande, seq(0, 1, 0.1))


Exercice 3 : 
  
  
1. 
rang = order(df$Population)
resultat = head(df[rang, ], n=5)
View(resultat)

2.
rang = order(df$Population, decreasing=TRUE)
resultat = head(df[rang, ],n=5)
View(resultat)

3.
rang = order(df$Prod_viande, decreasing=TRUE)
resultat = head(df[rang, ],n=5)
View(resultat)

4.
rang = order(df$Import_viande, decreasing=TRUE)
resultat = head(df[rang, ],n=5)
View(resultat)

5.
resultat = subset(df, Dispo_alim>=2300)
View(resultat)

6.
resultat = subset(df, Dispo_alim > 3500  & Import_viande > 1000)
View(resultat)

7.
resultat = subset(df, Nom %in% c("France","Belgique"))
View(resultat)


Exercice 4 : 
  
1.
df$Part_export<-df$Export_viande/df$Prod_viande

2.
df$Dispo_alim_pays<-df$Dispo_alim*df$Population

3.
write.table(x = df, file = "ExportTp2.csv")

4.
dispo_alim_mondiale = sum(df$Dispo_alim_pays, na.rm=TRUE)
dispo_alim_mondiale

5.
dispo_alim_mondiale/2300


Exercice 5 : 
  
1.
plot(x = df$Prod_viande,
     y = df$Export_viande, 
     main = "Pays : Prod_viande / Export_viande")

2.
cor(x = df$Prod_viande,
    y = df$Export_viande)

3.
matriceCor = cor(df[ , - 1] , use = "complete.obs")
matriceCor = round(matriceCor , 2)
View(matriceCor)

4.
install.packages("corrplot")

5.
library(corrplot)
corrplot(matriceCor, method="circle")
