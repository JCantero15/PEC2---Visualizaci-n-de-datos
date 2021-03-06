library(ggridges)
library(ggplot2)

# Lectura del conjunto del datos
df <- read.csv('Seasons_Stats.csv')

# Preparaci�n del conjunto de datos
pos <- which(df['Year']>='2002')
df_0217 <- df[pos,]
row.names(df_0217) <- NULL


ggplot(df_0217, aes(x = X3PA, y = Year, fill = Year,group = Year )) +
  geom_density_ridges() +
  theme_ridges() + 
  theme(legend.position="none") + 
  labs(title = "Evoluci�n volumen T3 2002-2017")+
  xlab("T3 lanzados") +
  ylab("A�o")
