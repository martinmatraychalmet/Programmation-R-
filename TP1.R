Exercice 1 : 
1. 
iris
class(iris)

2. 
View(iris)

3. 
nrow(iris)

4. 
ncol(iris)

5. 
colnames(iris)

6. 
summary(iris)

7. 
iris[ ,  c("Sepal.Length","Species")]

8. 
iris[ c(100, 103, 105) , ]

9. 
iris[ 50:100 , ]

10. 
mean(iris$Sepal.Length)

11. 
median(iris$Sepal.Width)

12.
sd(iris$Sepal.Length)

13. 
quantile(iris$Sepal.Width, probs = seq(from=0.1, to=0.9, by=0.1))


Exercice 2 : Partie 1
1. 
dfManga = read.csv("C:/Users/mmatraychalmet/Downloads/manga.csv", header = TRUE, sep = ",", dec = ".")
dfAnime = read.csv("C:/Users/mmatraychalmet/Downloads/anime.csv", header = TRUE, sep = ",", dec =".")
class(dfManga)
class(dfAnime)

2. 
View(dfManga)
View (dfAnime)

3.
dim (dfManga)
dim(dfAnime)

4. 
mean(dfManga$Score)
mean(dfAnime$Score)

5.
sum(dfManga$Vote)
sum(dfAnime$Vote)

6.
sd(dfManga$Score)
sd(dfAnime$Score)

7.
quantile(dfManga$Score, probs = seq(from=0.1, to=0.9, by=0.1))
quantile(dfAnime$Score, probs = seq(from=0.1, to=0.9, by=0.1))

Partie 2 :
1.
extraction1 = subset(dfManga, Score > 9)
nrow(extraction1)

2. 
extraction2 = subset(dfManga, Vote >= 200000)
nrow(extraction2)

3. 
extraction3 = subset(dfManga, Vote > 200000 & Score > 8)
nrow(extraction3)

4. 
extraction4 = subset(dfManga, Score >= 7 & Score <= 8)
nrow(extraction4)

Partie 3 : 
1.  
effectifRating = table(dfAnime$Rating)
print(effectifRating)
length(effectifRating)
prop.table(effectifRating)

2.
extraction5 = subset(dfAnime, Rating == "R - 17+ (violence & profanity)")
nrow(extraction5)

3. 
extraction6 =  subset(dfAnime, Rating== "R - 17+ (violence & profanity)" & Score > 8)
nrow(extraction6)

4. 
extraction7 = subset(dfAnime, Rating != "R - 17+ (violence & profanity)")
nrow(extraction7)

5.
extraction8 = subset(dfAnime, Rating %in% c("PG - Children","G - All Ages"))
nrow(extraction8)

6. 
extraction9 = subset(dfAnime, !Rating %in% c("PG - Children","G - All Ages"))
nrow(extraction9)

7. 
extraction10 = subset(dfAnime, Score >= 9 | Vote > 400000)
nrow(extraction10)

Partie 4 :
1. 
dfAnime = dfAnime[ , c("Title","Score","Vote","Ranked")]
dfManga = dfManga[ , c("Title","Score","Vote","Ranked")]

2. 
dfAnime$Type = "Anime"
dfManga$Type = "Manga"

3. 
dfConcat = rbind(dfManga,dfAnime)
View(dfConcat)
  
4. 
write.table(x = dfConcat, file = "L:/BUT/SD/Promo 2025/mmatraychalmet/R/TP1/ExportTp1.csv",
            sep = ";",row.names = FALSE)
