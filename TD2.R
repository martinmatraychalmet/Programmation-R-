Exercice 1 : 
  
2. 
getwd()

3. 
setwd(dir = "M:/BUT/SD/Promo 2025/mmatraychalmet/R/Dataset")
getwd()

4. 
bodies_karts = read.csv(file = "bodies_karts.csv", header = TRUE, sep = ";", dec = ",")
tires = read.csv(file = "tires.csv", header = TRUE, sep = "\t", dec = ",")
gliders = read.csv(file = "gliders.csv", header = TRUE, sep = "|", dec = ".")
drivers = read.csv(file = "drivers.csv", header = TRUE, sep = ";", dec = ",")

5.
dim(bodies_karts)
dim(tires)
dim(gliders)
dim(drivers)


Exercice 2 : 

1. 
summary(bodies_karts)
summary(tires)  
summary(gliders)
summary(drivers)

2.
plot(x = drivers$Weight,
     y = drivers$Acceleration,
     main = "Drivers : Weight / Acceleration")

3.
cor(x = drivers$Weight,
    y = drivers$Acceleration)        

4.
covXY = cov(x = drivers$Weight,
            y = drivers$Acceleration)
sX = sd(drivers$Weight)
sY = sd(drivers$Acceleration)
print(covXY / (sX*sY))

5.
coefCorr = cor(x = drivers$Weight,
               y = drivers$Acceleration)
coefDeter = coefCorr^2
print(coefDeter)

6.
matriceCor = cor(drivers[ , -1])
matriceCor = round(matriceCor , 2)
View(matriceCor)

7. 
install.packages("corrplot")

8. 
library(corrplot)
corrplot(matriceCor, method="circle")

9.
matriceCor = round(cor(bodies_karts[ , - 1]),1)
corrplot(matriceCor, method="color",  
         type="upper", order="hclust", 
         addCoef.col = "black", # Ajout du coefficient de corrélation
         tl.col="black", tl.srt=45, #Rotation des étiquettes de textes
         # Cacher les coefficients de corrélation sur la diagonale
         diag=FALSE 
)

matriceCor = round(cor(gliders[ , - 1]), 1)
corrplot(matriceCor, method="color",  
         type="upper", order="hclust", 
         addCoef.col = "black", 
         tl.col="black", tl.srt=45, 
         diag=FALSE 
)


Exercice 3 : 
  
1. 
resultat = drivers[ , c("Driver" , "Weight")]
View(resultat)

2.
resultat = driver[ 1:10 , c("Driver", "Weight")]
View(resultat)

3.
resultat = drivers[ , -c(5, 7, 9)]
View(resultat)

4. 
resultat = drivers[ , -c(2, 3)]
View(resultat)

5.
resultat = drivers[ , c("Driver", "Acceleration", "Weight")]
View(resultat)

6. 
resultat = drivers[c(3, 12, 32) , ]
View(resultat)

7. 
resultat = drivers[c(32, 3, 12) , ]
View(resultat)

8.
rang = order(drivers$Weight)
resultat = drivers[ rang , c("Driver", "Weight") ]
View(resultat)

9. 
rang = order(drivers$Acceleration, decreasing = TRUE)
resultat = drivers[ rang , c("Driver", "Acceleration")]
View(resultat)

10. 
rang = order(drivers$Acceleration, drivers$Weight, decreasing = c(TRUE, FALSE))
resultat = drivers[ rang , c("Driver", "Acceleration", "Weight")]
View(resultat)


Exercice 4 : 
  
1. 
help(subset)
topDriver = subset(x = drivers,
                   subset = Acceleration == max(Acceleration), 
                   select = c("Driver","Acceleration"))

2. 
topGlider = subset(x = gliders,
                   subset = Acceleration == max(Acceleration), 
                   select = c("Glider","Acceleration"))
topTires = subset(x = tires,
                  subset = Acceleration == max(Acceleration), 
                  select = c("Tire","Acceleration"))
topBody = subset(x = bodies_karts,
                 subset = Acceleration == max(Acceleration), 
                 select = c("Body","Acceleration"))
