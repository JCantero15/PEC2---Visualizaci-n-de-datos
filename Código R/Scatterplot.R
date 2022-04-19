library(ggplot2)

# Lectura del conjunto del datos
df <- read.csv('Seasons_Stats.csv')

# Preparación del conjunto de datos
pos <- which(df['Year']=='2015')
df_2015 <- df[pos,]
row.names(df_2015) <- NULL

pos <- which(df['Year']=='2010')
df_2010 <- df[pos,]
row.names(df_2010) <- NULL

pos <- which(df['Year']=='2005')
df_2005 <- df[pos,]
row.names(df_2005) <- NULL

# Visualización de los conjuntos de datos
par(mfrow = c(1, 3))
plot(x = df_2005$X3PA ,y = df_2005$X3P, xlab = "T3 lanzados", ylab = "T3 anotados", main="2005",col="blue")
plot(x = df_2010$X3PA ,y = df_2010$X3P, xlab = "T3 lanzados", ylab = "T3 anotados", main="2010",col="green")
plot(x = df_2015$X3PA ,y = df_2015$X3P, xlab = "T3 lanzados", ylab = "T3 anotados", main="2015",col="red")