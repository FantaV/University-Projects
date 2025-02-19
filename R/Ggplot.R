# GGPLOT: per la generazione di grafici
ggplot(data = df) +  # sto dicendo che voglio un grafico da datafram DF
  geom_point(   # chiedo uno SCATTEPLOT
    aes(x = flipper_lenght_mm, y = body_mass_g) # specifico le variab e gli assi 
  )

# sintassi 
ggplot(data = <DATA>) +
  <GEOM_FUNCTION>(mapping = aes(<MAPPINGS>))