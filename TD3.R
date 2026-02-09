Exercice 1 : 
  
1.
install.packages("readxl")
readxl::read_excel(path="L:/BUT/SD/Promo 2025/mmatraychalmet/R/Dataset/pokemon.xlsx", sheet = "pokemon")
library(readxl)
pokemon = read_excel(path ="L:/BUT/SD/Promo 2025/mmatraychalmet/R/Dataset/pokemon.xlsx", sheet = "pokemon")

2.
dim(pokemon)
ncol(pokemon)
nrow(pokemon)

3.
summary(pokemon)

4.
pokemon$is_legendary = as.factor(pokemon$is_legendary)
pokemon$generation = as.factor(pokemon$generation)
pokemon$type = as.factor(pokemon$type)

5.
summary(pokemon)


Exercice 2 : 
Partie 1 : 
1. 
med = median(pokemon$attack)
pokemon$attack_group = ifelse(pokemon$attack >= med, "attack+", "attack-")
pokemon$attack_group = as.factor(pokemon$attack_group)
summary(pokemon$attack_group)

2. 
pokemon$water_fire = ifelse(pokemon$type %in% c("water","fire"), "yes","no")
pokemon$water_fire = as.factor(pokemon$water_fire)
summary(pokemon$water_fire)

3.
q3_attack = quantile(pokemon$attack, probs = 0.75)
q3_defense = quantile(pokemon$defense, probs = 0.75)
q3_speed = quantile(pokemon$speed, probs = 0.75)
pokemon$best = ifelse(pokemon$attack > q3_attack &
                      pokemon$defense > q3_defense &
                      pokemon$speed > q3_speed , "yes","no") 
pokemon$best = as.factor(pokemon$best)
summary(pokemon$best)


Partie 2 : 
1. 
requete = subset(pokemon, is.na(weight_kg))
View(requete)

1.
requete = subset(pokemon, !is.na(weight_kg))
View(requete)

2.
med_weight_kg = median(pokemon$weight_kg, na.rm = TRUE)
pokemon$weight_kgNa = ifelse(is.na(pokemon$weight_kg),
                             med_weight_kg ,
                             pokemon$weight_kg)
med_height_m = median(pokemon$height_m, na.rm = TRUE)
pokemon$height_mNA = ifelse(is.na(pokemon$height_m),
                            med_height_m,
                            pokemon$height_m)

Partie 3 : 
1. 
pokemon$weight_group = cut(pokemon$weight_kg,
                           breaks = 3,
                           labels = c("léger","moyen","lourd"))

2.
pokemon$height_m_group = cut(pokemon$height_m,
                             breaks = c(0,1,2,3,
                                        max(pokemon$height_m,
                                            na.rm = TRUE)))
3.
pokemon$defense_group = cut(pokemon$defense,
                            breaks = quantile(pokemon$defense,
                                              na.rm = TRUE),
                            include.lowest = TRUE)
summary(pokemon$defense_group)


Exercice 3 : 
  
1.
aggregate(x = attack ~ type,
          data = pokemon,
          FUN = function(x) mean(x))

2.
aggregate(x = attack ~ generation + type,
          data = pokemon,
          FUN = function(x) median(x))
3.
aggregate(x = pokedex_number ~ type,
          data = pokemon,
          FUN = function(x) length(x))
4.
aggregate(speed ~ generation + type,
          data = pokemon,
          FUN = function(x) c(moy = mean(x),
                              med = median(x),
                              eff = length(x)))
