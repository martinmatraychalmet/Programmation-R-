#Exo 1
#1.
df = read.csv("L:/BUT/SD/Promo 2025/mmatraychalmet/R/Dataset/velov.csv", header = TRUE, dec = ",", sep = ";")
#2.
summary(df)
class(df$status)
class(df$CodePostal)
#3.
df$status = as.factor(df$status)
df$CodePostal = as.factor(df$CodePostal)
#4.
df$bornes = ifelse(df$capacity != (df$bikes + df$stands), "KO", "OK")
table(df$bornes)


#Exo 2
#1.
hist(x = df$capacity,
     main = "Distribution de \n la capacité des stations")
#2.
hist(x = df$capacity,
     main = "Distribution de \n la capacité des stations",
     breaks = 6)
#3.
hist(x = df$capacity,
     main = "Distribution de \n la capacité des stations",
     breaks = 6,
     col = "red")
#4.
hist(x = df$capacity,
     main = "Distribution de \n la capacité des stations",
     breaks = 6,
     col = "red",
     xlab = "Capacity")
#5.
abline(h = 100, col = "blue", lty = 2)
#6.
hist(x = df$capacity,
     main = "Distribution de \n la capacité des stations",
     col = "red",
     probability = TRUE,
     xlab = "Capacity")
#7.
lines(density(df$capacity),
      lty = 2,
      col = "blue",
      lxd = 4)
#8.
hist(x = df$capacity,
     main = "Distribution de \n la capacité des stations",
     col = "red",
     probability = TRUE,
     xlab = "Capacity",
     ylim = c(0,0.08))
lines(density(df$capacity),
      lty = 2,
      col = "blue",
      lwd = 2)


#Exo 3
#1.
boxplot(x = df$capacity,
        main = "Boxplot de \n la capacité des stations")
#2.
boxplot(x = df$capacity,
        main = "Boxplot de \n la capacité des stations",
        horizontal = TRUE)
#3.
boxplot(x = df$capacity,
        main = "Boxplot de \n la capacité des stations",
        vertical = TRUE,
        outline = FALSE)
#4.
moy = mean(df$capacity, na.rm = TRUE)
points(moy, col = "red", pch = 15, cex = 2)
#5.
par(mfrow=c(1,2))
df7 = subset(df, CodePostal == "69007")
boxplot(x = df7$bikes,
        main = "Boxplot nb vélos \n 69007",
        ylim = c(0,40))
df8 = subset(df, CodePostal == "69008")
boxplot(x = df8$bikes,
        main = "Boxplot nb vélos \n 69008",
        ylim = c(0,40))
#6.
par(mfrow=c(1,1))
boxplot(formula = bikes ~ bonus,
        data = df,
        main = "Dispo vélos vs Stations Bonus")
#7.
means = tapply(X = df$bikes,
               INDEX = df$bonus, 
               FUN = function(X) mean(X))
print(means)
points(means, col = "red", pch = 19)


#Exo 4
#1.
effectif = table(df$bonus)
barplot(height = effectif, 
        main = "Répartition du nombre \n de station bonus")
#2.
barplot(height = effectif, 
        main = "Répartition du nombre \n de station bonus",
        horiz = TRUE)
#3.
frequence = prop.table(effectif)
barplot(height = frequence,
        main = "Répartition en % du nombre \n de station bonus",
        horiz = TRUE)
#4.
effectif = table(df$banking, df$bonus)
print(effectif)
barplot(height = effectif,
        main = "Bonus vs Banking",
        xlab = "Station bonus ?")
#5.
frequence = prop.table(x = effectif)
barplot(height = frequence, 
        main = "Bonus vs Banking",
        xlab = "Station Bonus ?",
        col = c("red", "green"))
legend_labels = colnames(frequence)
legend(x = "topright",
       legend = legend_labels,
       fill = c("red", "green"))
print(frequence)
#6.
frequence = prop.table(x = effectif, margin = 2)
barplot(height = frequence, 
        main = "Bonus vs Banking",
        xlab = "Station Bonus ?",
        col = c("red", "green"))
legend_labels = colnames(frequence)
legend(x = "topright",
       legend = legend_labels,
       fill = c("red", "green"))
print(frequence)
#7.
frequence = prop.table(x = effectif, margin = 2)
barplot(height = frequence, 
        main = "Bonus vs Banking",
        xlab = "Station Bonus ?",
        col = c("red", "green"),
        beside = TRUE)
legend_labels = colnames(frequence)
legend(x = "topright",
       legend = legend_labels,
       fill = c("red", "green"))
print(frequence)
#8.
pie(x = effectif,
    main = "Répartition du nombre \n de station bonus",
    col = c("yellow", "green"))
#9.
etiquette = paste(rownames(effectif), "\n", effectif)
pie(x = effectif, 
    main = "Répartition du nombre \n de station bonus",
    col = c("yellow", "green"),
    labels = etiquette)
#10.
effectif = table(df$CodePostal)
top10 = sort(effectif, decreasing = TRUE)[1:10]
barplot(height = top10,
        main = "Top 10 sur le \n nombre de station",
        col = palette(),
        las = 2)
print(palette())
#11.
barplot(height = top10,
        main = "Top 10 sur le \n nombre de station",
        col = colors(),
        las = 2)
print(colors())
#12.
dev.print(device = png, file = "export.png", width = 600)
