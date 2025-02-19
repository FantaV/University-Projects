# VETTORE 
x <- c(4, 6, 1, 4)
x
length(x)

# un vettore può contenre solo oggetti della stessa classe

x <- c(2.4, "ab")  # 2.4 verrà convertito automaticamente in una stringa
x
class(x)  # mi dice che tipo è il mio oggetto

y <- c(TRUE, 8)
y
class(y)

k <- 0:5      # generami un vettore che va da 0 a 5
class(k)
as.logical(k) # as.logical: chiedo di trasformare l'oggetto in un tipo logical
as.character

# LIST: creare una lista di elementi in una scatola 
j <- list(c(1, 2), TRUE, c('a','b','c'))
# primo elemento 1,2
# secondo elemento TRUE
#terzo elemento a b c
j

# accedere ad elementi della lista 
j[3] # con una parentesi accediamo al vettore intero
j[[3]] # con due accediamo all'elemento di una lista

# MATRICE 
m <- matrix(nrow = 2, ncol = 3)
m
dim(m) #dimensione del vettore
attributes(m) #attributi della matrice (in questo momento è solo la dimensione)

s <- matrix(1:6,nrow = 2, ncol = 3) # i numeri vengono inseriti per colonna 
s 

d <- 1:10
d 
# nonostante 'd' sia stato dichiarato come un vettore di numeri da 1 a 10 
# con i comando 'dim' questa volta R andrà a convertire la lista in un vettore
# con 2 righe e 5 colonne
dim(d) <- c(2,5)
d

# BINDING 
i <- 1:3
o <- 25:27
cbind(i, o) # mi permette di appaiare i due vettori in senso verticale
rbind(i, o) # mi permette di appaiare i due vettori in senso orizzontale

# ACCESSO AGLI ELELEMTI DELLA MATRICE 
d[1,] # dico prendimi la prima riga TUTTA 
d[,2] # dico prendi la prima colonna TUTTA
d[2,4] # dico prendi 

# MISSING VALUE: R non applica funzione a vettori con dati mancanti 
t <- c(1, 3, NA, 5, 10)
sum(t)
is.na(t) # mi indica dove si trova il valore mancante NA in termine di T/F

# DATE 
z <- as.Date("1970-01-01") # mi genera la data indicata partendo da una stringa 
z

# manipolazione data 
unclass(z)

unclass(as.Date("1997-08-13")) # quanti giorni sono passati da lì a quì