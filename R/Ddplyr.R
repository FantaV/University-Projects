# DATA FRAME 
x <- data.frame (col1 = 1:5, col2 = c(T,T,T,F,F))
x

# FACTOR:
y <- factor(c("si", "no", "si", "si", "no", "forse"), # virgola per il LEVELS
levels = c("si", "no", "forse")) # permette di definire l'ordine di visual dei livelli
y

table(y) # distribuzione di frequenza degli oggetti contenuti nella variabile

attr(y, which = "levels") # sono un attributo del factor

# FILTER: filtrare osservazioni
filter(planes, manufacterer == "BOEING", year == 2004) # operatore di default &
# dal dataset planes prendi manufacter uguale a boeing e con anno 2004
filter(planes, year == 1998 | year = 2004)
filter(planes, year %in% c(2000, 1998))
# l'operatore %in% permette di sintetizzare il codice e prendere tutti i valori
# indicati
filter(planes, speed > 200 | is.na(speed))

# ARRANGE: ordinare le righe
arrange(planes, desc(year)) # il dataset planes verrà ordinato per anno decrescente

# SELECT: selezione delle variabili 
select(planes, manufacterer, model)
    # dataset   1° col      2° col
select(planes, year:model) # seleziona tutto da questo a questo

select(planes, -year, -model). # seleziona tutto ed escludi queste

# MUTATE: creare nuove variabili
planes_small <- filter(planes, !is.na(speed))
planes_small <- select(planes, manufacterer:speed)

mutate(planes_small, speed_km = speed * 1.6)
# stiamo creando una nuova variabile che sia il prodotto di speed * 1.6

# SUMMARISE
summarise(planes, avg_speed = mean(speed, na.rm = TRUE)) # na.rm: non considerare
                                                         # i valori mancanti

# GROUP_BY
test <- group_by(test, type)
summarise( k, avg_speed = mean(speed, na.rm = TRUE))

# PIPE %>% : modalità snella di scrivere il codice con le stesse istruzioni di cui sopra
test %>%
  group_by(k) %>%
    summarise(avg_speed = mean(speed, na.rm = TRUE)






