# Exercice 1
# 1.
a = 10
b = 5
# 2.
resultat = a * b
print(resultat)
# 3.
A = 7.2
B = 10.1
print("Le langage différencie les majuscules ; a <> A")
# 4.
resultat = A + B
print(resultat)
print("Le résultat a été remplacé")
# 5.
rm(a,b,A,B,resultat)

# Exercice 2
# 1.
vecteur = c(1, 2, 3, 4, 5)
class(vecteur)
vecteur[3]
# 2.
v1 = 1:5
v2 = v1 + 3
# 3.
v3 = 1:6
# 4.
v4 = v3^2
# 5.
v5 = v4 / 2
# 6.
vc = c("lundi", "mardi", "mercredi", "jeudi", "vendredi", "samedi", "dimanche")
class(vc)
vc[c(2,7)]
# 7.
bol = c(TRUE, FALSE, TRUE, FALSE, TRUE, TRUE)
class(bol)
# 8.
dec = c(1.4, 2.1, 2.2, 3.4)
class(dec)
dec[-3]
# 9.
mois = c("janvier", "fevrier", "mars", "avril", "mai", "juin", "juillet", "aout", "septembre", "octobre", "novembre", "decembre")
class(mois)
mois[c(1,2,3)]
# 10.
negatif = c(-1, -3, -5)
class(negatif)
negatif[c(3,1)]
# 11.
fruit = c("fraise", "framboise", "myrtille")
class(fruit)
fruit[-c(1,2)]
# 12.
manquant = c(1, 3, NA, 5)
class(manquant)

# 1.
seq_nombre = seq(from = 1, to = 10)
len_nombre = length(seq_nombre)
# 2.
seq_pairs = seq(from = 2, to = 20, by = 2)
len_pairs = length(seq_pairs)
# 3.
seq_dec = seq(from = 0, to = -5)
len_dec = length(seq_dec)
# 4.
seq_50 = seq(from = 5, to = 50, by = 5)
len_50 = length(seq_50)
# 5.
seq_dec10 = seq(from = 10, to = 1)
len_dec10 = length(seq_dec10)
# 6.
seq_1 = seq(from = 0, to = 1, by = 0.1)
len_1 = length(seq_1)
# 7.
seq_5 = seq(from = 5, to = -5, by = -1)
len_5 = length(seq_5)
# 8.
seq_imp = seq(from = 1, to = 10, by = 2)
len_imp = length(seq_imp)

# 1.
nb_3 = rep(3, times = 3)
# 2.
rep_ABC = rep(c('A', 'B', 'C'), times = 3)
# 3.
rep_123 = rep(1:3, times = 3)
# 4.
rep_bol = rep(c(TRUE, FALSE), times = 4)
# 5.

 
