library(sunburstR)

# Lectura del conjunto de datos
df <- read.csv('euroleague_alltime.csv')

# Selección de los datos
pos <- which(df['team']=='FC Barcelona'|df['team']=='CSKA Moscow'|df['team']=='Real Madrid')

df_p  <- df[pos,]
row.names(df_p) <- NULL 

df_p <- df_p %>%
  group_by(team,position,nationality) %>%
  summarise(count=n())

df_p <- cbind(as.data.frame(paste(df_p$team,df_p$position,df_p$nationality,sep=" - ")),df_p$count)

# Visualización de los datos
sunburst(data = df_p, legend = FALSE, colors = c("D99527", "6F7239", "CE4B3C", "C8AC70", "018A9D"))