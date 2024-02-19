library(readr)
library(dplyr)
library(tidyr)


df <- data.frame(matrix(ncol = 0, nrow = 330))
# Liga ACB 2023/24
tfg <- read_csv("tfg.csv")
tfg1 <- read_csv("tfg (1).csv")
tfg2 <- read_csv("tfg (2).csv")
boxscore <- read_csv("boxscore.csv")
head(boxscore)
bs <- boxscore[, c(3, 23:40)]
PPT <- read_csv("PPt.csv")
PPT2 <- read_csv("PPT2.csv")
PPT3 <- read_csv("PPT3.csv")
TCInt <- read_csv("%TC.csv")
T2Inte <- read_csv("%T2Int.csv")
T3Int <- read_csv("%T3Int.csv")
Ptos <- read_csv("%Ptos.csv")
Ptos2 <- read_csv("%2Ptos.csv")
Ptos3 <- read_csv("%3Ptos.csv")
TAsist <- read_csv("%TAsist.csv")
T2Asist <- read_csv("%T2Asist.csv")
T3Asist <- read_csv("%T3Asist.csv")
TL_Min <- read_csv("TL-min.csv")
TL_F <- read_csv("TL_F.csv")
RebTot <- read_csv("RTot.csv")
RebOf <- read_csv("RebOf.csv")
RebDef <- read_csv("RebDef.csv")
Asist <- read_csv("%Asist.csv")
TO <- read_csv("%TO.csv")
LE <- read_csv("LE.csv")

df$Equipo <- tfg$Equipo
df$Xogador <- tfg$Xogadores
df$Mins <- tfg$Minutos
df$PPP <- tfg$Media
df$PPMin <- tfg1$Media
df$PPP <- tfg2$Media
df$Partidos <- bs$Partidos
df$'%T2' <- bs$'2P%...25'
df$'%T3' <- bs$'3P%...26'
df$'%TL' <- bs$'TL%...29'
df$APP <- bs$As...32 / bs$Partidos
df$PerPP <- bs$Pér...33 / bs$Partidos
df$RecPP <- bs$Rec...34 / bs$Partidos
df$TReaPP <- bs$T.Rea...35 / bs$Partidos
df$TRecPP <- bs$T.Rec...36 / bs$Partidos
df$FRec <- bs$F.Rea...37 / bs$Partidos
df$FRea <- bs$F.Rec...38 / bs$Partidos
df$Val <- bs$Val...40 / bs$Partidos
df$PPTC <- PPT$Media
df$PPT2 <- PPT2$Media  
df$PPT3 <- PPT3$Media  
df$'%TCInt' <- TCInt$Media
df$'%T2Int' <- T2Inte$Media
df$'%T3Int' <- T3Int$Media
df$'%Ptos' <- Ptos$Media
df$"%Ptos2" <- Ptos2$Media
df$"%Ptos3" <- Ptos3$Media
df$"%TAsist" <- TAsist$Media
df$"%T2Asist" <- T2Asist$Media
df$"%T3Asist" <- T3Asist$Media
df$"TL/Min" <- TL_Min$Media
df$"TL/F" <- TL_F$Media
df$"%RTot" <- RebTot$Media
df$"%ROf" <- RebOf$Media
df$"%RDef" <- RebDef$Media
df$"%Asist" <- Asist$Media
df$"%TO" <- TO$Media
df$"LE" <- LE$Media

save(df, file="df.RData")



df2 <- data.frame(matrix(ncol = 0, nrow = 253))
# EuroCup 2023/24
tfg <- read_csv("PPP_EC.csv")
tfg1 <- read_csv("PPMin_EC.csv")
tfg2 <- read_csv("PPPos_EC.csv")
boxscore <- read_csv("boxscore_EC.csv")
bs <- boxscore[, c(3, 23:40)]
PPT <- read_csv("PPTC_EC.csv")
PPT2 <- read_csv("PPT2_EC.csv")
PPT3 <- read_csv("PPT3_EC.csv")
TCInt <- read_csv("%TC_EC.csv")
T2Inte <- read_csv("%T2_EC.csv")
T3Int <- read_csv("%T3_EC.csv")
Ptos <- read_csv("%Ptos_EC.csv")
Ptos2 <- read_csv("%2Ptos_EC.csv")
Ptos3 <- read_csv("%3Ptos_EC.csv")
TAsist <- read_csv("%TAsist_EC.csv")
T2Asist <- read_csv("%T2Asist_EC.csv")
T3Asist <- read_csv("%T3Asist_EC.csv")
TL_Min <- read_csv("TL_Min_EC.csv")
TL_F <- read_csv("TL_F_EC.csv")
RebTot <- read_csv("%RebTot_EC.csv")
RebOf <- read_csv("%RebOf_EC.csv")
RebDef <- read_csv("%RebDef_EC.csv")
Asist <- read_csv("%Asist_EC.csv")
TO <- read_csv("%TO_EC.csv")
LE <- read_csv("LE_EC.csv")

df2$Equipo <- tfg$Equipo
df2$Xogador <- tfg$Xogadores
df2$Mins <- tfg$Minutos
df2$PPP <- tfg$Media
df2$PPMin <- tfg1$Media
df2$PPP <- tfg2$Media
df2$Partidos <- bs$Partidos
df2$'%T2' <- bs$'2P%...25'
df2$'%T3' <- bs$'3P%...26'
df2$'%TL' <- bs$'TL%...29'
df2$APP <- bs$As...32 / bs$Partidos
df2$PerPP <- bs$Pér...33 / bs$Partidos
df2$RecPP <- bs$Rec...34 / bs$Partidos
df2$TReaPP <- bs$T.Rea...35 / bs$Partidos
df2$TRecPP <- bs$T.Rec...36 / bs$Partidos
df2$FRec <- bs$F.Rea...37 / bs$Partidos
df2$FRea <- bs$F.Rec...38 / bs$Partidos
df2$Val <- bs$Val...40 / bs$Partidos
df2$PPTC <- PPT$Media
df2$PPT2 <- PPT2$Media  
df2$PPT3 <- PPT3$Media  
df2$'%TCInt' <- TCInt$Media
df2$'%T2Int' <- T2Inte$Media
df2$'%T3Int' <- T3Int$Media
df2$'%Ptos' <- Ptos$Media
df2$"%Ptos2" <- Ptos2$Media
df2$"%Ptos3" <- Ptos3$Media
df2$"%TAsist" <- TAsist$Media
df2$"%T2Asist" <- T2Asist$Media
df2$"%T3Asist" <- T3Asist$Media
df2$"TL/Min" <- TL_Min$Media
df2$"TL/F" <- TL_F$Media
df2$"%RTot" <- RebTot$Media
df2$"%ROf" <- RebOf$Media
df2$"%RDef" <- RebDef$Media
df2$"%Asist" <- Asist$Media
df2$"%TO" <- TO$Media
df2$"LE" <- LE$Media

save(df2, file="df2.RData")












df3 <- data.frame(matrix(ncol = 0, nrow = 284))
# LigaACB 2023/24
PPP2 <- read_csv("PPP2.csv")
PPMin2 <- read_csv("PPMin2.csv")
PPPos2 <- read_csv("PPPos2.csv")
boxscore2 <- read_csv("boxscore2.csv")
bs2 <- boxscore2[, c(3, 23:40)]
PPT2 <- read_csv("PPTC2.csv")
PPT22 <- read_csv("PPT22.csv")
PPT32 <- read_csv("PPT32.csv")
TCInt2 <- read_csv("%TCAbs2.csv")
T2Inte2 <- read_csv("%T2Abs2.csv")
T3Int2 <- read_csv("%T3Abs2.csv")
Ptos2 <- read_csv("%Ptos2.csv")
Ptos22 <- read_csv("%2Ptos2.csv")
Ptos32 <- read_csv("%3Ptos2.csv")
TAsist2 <- read_csv("%Asist2.csv")
T2Asist2 <- read_csv("%T2Asist2.csv")
T3Asist2 <- read_csv("%T3Asist2.csv")
TL_Min2 <- read_csv("TL_Min2.csv")
TL_F2 <- read_csv("TL_F2.csv")
RebTot2 <- read_csv("%Reb2.csv")
RebOf2 <- read_csv("%RebOf2.csv")
RebDef2 <- read_csv("%RebDef2.csv")
Asist2 <- read_csv("%Asistencias2.csv")
TO2 <- read_csv("%TO2.csv")
LE2 <- read_csv("LE2.csv")

df3$Equipo <- PPP2$Equipo
df3$Xogador <- PPP2$Xogadores
df3$Mins <- PPP2$Minutos
df3$PPP <- PPP2$Media
df3$PPMin <- PPMin2$Media
df3$Partidos <- bs2$Partidos
df3$'%T2' <- bs2$'2P%...25'
df3$'%T3' <- bs2$'3P%...26'
df3$'%TL' <- bs2$'TL%...29'
df3$APP <- bs2$As...32 / bs2$Partidos
df3$PerPP <- bs2$Pér...33 / bs2$Partidos
df3$RecPP <- bs2$Rec...34 / bs2$Partidos
df3$TReaPP <- bs2$T.Rea...35 / bs2$Partidos
df3$TRecPP <- bs2$T.Rec...36 / bs2$Partidos
df3$FRec <- bs2$F.Rea...37 / bs2$Partidos
df3$FRea <- bs2$F.Rec...38 / bs2$Partidos
df3$Val <- bs2$Val...40 / bs2$Partidos
df3$PPTC <- PPT2$Media
df3$PPT2 <- PPT22$Media  
df3$PPT3 <- PPT32$Media  
df3$'%TCInt' <- TCInt2$Media
df3$'%T2Int' <- T2Inte2$Media
df3$'%T3Int' <- T3Int2$Media
df3$'%Ptos' <- Ptos2$Media
df3$"%Ptos2" <- Ptos22$Media
df3$"%Ptos3" <- Ptos32$Media
df3$"%TAsist" <- TAsist2$Media
df3$"%T2Asist" <- T2Asist2$Media
df3$"%T3Asist" <- T3Asist2$Media
df3$"TL/Min" <- TL_Min2$Media
df3$"TL/F" <- TL_F2$Media
df3$"%RTot" <- RebTot2$Media
df3$"%ROf" <- RebOf2$Media
df3$"%RDef" <- RebDef2$Media
df3$"%Asist" <- Asist2$Media
df3$"%TO" <- TO2$Media
df3$"LE" <- LE2$Media

save(df3, file="df3.RData")




setwd("~/GCED/TFG/Datos")

PPP_eq <- read_csv("PPP_equipo.csv")
PPMin_eq <- read_csv("PPMin_equipo.csv")
PPPos_eq <- read_csv("PPPos_eq.csv")
PPT_eq <- read_csv("PPT_eq.csv")
PPT2_eq <- read_csv("PPT2_eq.csv")
PPT3_eq <- read_csv("PPT3_eq.csv")
Asist <- read_csv("%Asist_eq.csv")
AsistT2 <- read_csv("%AsistT2_eq.csv")
AsistT3 <- read_csv("%AsistT3_eq.csv")
TL_Min <- read_csv("TL_Min_eq.csv")
TL_F <- read_csv("TL_F_eq.csv")
RebTot <- read_csv("%Reb_eq.csv")
RebOf <- read_csv("RebOf_eq.csv")
RebDef <- read_csv("RebDef_eq.csv")




PPP_LE <- read_csv("PPP_LE.csv")
PPMin_LE <- read_csv("PPMin_LE.csv")
PPPos_LE <- read_csv("PPPos_LE.csv")
PPT_LE <- read_csv("PPT_LE.csv")
PPT2_LE <- read_csv("PPT2_LE.csv")
PPT3_LE <- read_csv("PPT3_LE.csv")
Asist_LE <- read_csv("%TAsist_LE.csv")
AsistT2_LE <- read_csv("%T2Asist_LE.csv")
AsistT3_LE <- read_csv("%T3Asist_LE.csv")
TL_Min_LE <- read_csv("TL_Min_LE.csv")
TL_F_LE <- read_csv("TL_F_LE.csv")
RebTot_LE <- read_csv("%Reb_LE.csv")
RebOf_LE <- read_csv("%RebOf_LE.csv")
RebDef_LE <- read_csv("%RebDef_LE.csv")


funcional <- function(df){
  df <- df %>%  filter(Xornada != 0)        
  df <- subset(df, select = c(Equipo, Xornada, `Valor Equipo`))
  return( df %>%
    spread(key = Xornada, value = `Valor Equipo`))
}

limpieza <- function(df){
  df <- df %>%  filter(Xornada == 0)        
  df <- subset(df, select = c(Equipo, `Media Equipo`))
  return(df)
}

df_equipos <- data.frame()

PPP_LE <- limpieza(PPP_LE)
PPMin_LE <- limpieza(PPMin_LE)
PPPos_LE <- limpieza(PPPos_LE)
PPT_LE <- limpieza(PPT_LE)
PPT2_LE <- limpieza(PPT2_LE)
PPT3_LE <- limpieza(PPT3_LE)
Asist_LE <- limpieza(Asist_LE)
AsistT2_LE <- limpieza(AsistT2_LE)
AsistT3_LE <- limpieza(AsistT3_LE)
TL_Min_LE <- limpieza(TL_Min_LE)
TL_F_LE <- limpieza(TL_F_LE)
RebTot_LE <- limpieza(RebTot_LE)
RebOf_LE <- limpieza(RebOf_LE)
RebDef_LE <- limpieza(RebDef_LE)


df <- data.frame(Equipo = RebDef_LE$Equipo)
lista_variables <- list(PPP_LE, PPMin_LE, PPPos_LE, PPT_LE, PPT2_LE, PPT3_LE, Asist_LE, 
                        AsistT2_LE, AsistT3_LE, TL_Min_LE, TL_F_LE, RebTot_LE, RebOf_LE,
                        RebDef_LE)

for (df_intermedio in lista_variables) {
  df <- left_join(df, df_intermedio, by = "Equipo")
}

colnames(df) <- list('Equipos', 'PPP', 'PPMin', 'PPPos', 'PPT', 'PPT2', 
                     'PPT3', 'Asist', 'AsistT2', 'AsistT3', 'TL_Min',
                     'TL_F', 'RebTot', 'RebOf', 'RebDef')




PPP_eq <- limpieza(PPP_eq)
PPMin_eq <- limpieza(PPMin_eq)
PPPos_eq <- limpieza(PPPos_eq)
PPT_eq <- limpieza(PPT_eq)
PPT2_eq <- limpieza(PPT2_eq)
PPT3_eq <- limpieza(PPT3_eq)
Asist <- limpieza(Asist)
AsistT2 <- limpieza(AsistT2)
AsistT3 <- limpieza(AsistT3)
TL_Min <- limpieza(TL_Min)
TL_F <- limpieza(TL_F)
RebTot <- limpieza(RebTot)
RebOf <- limpieza(RebOf)
RebDef <- limpieza(RebDef)



lista_variables2 <- list(PPP_eq, PPMin_eq, PPPos_eq, PPT_eq, PPT2_eq, PPT3_eq, Asist, 
                         AsistT2, AsistT3, TL_Min, TL_F, RebTot, RebOf, RebDef)

df2 <- data.frame(Equipo = RebDef$Equipo)
for (df_intermedio in lista_variables2) {
  df2 <- left_join(df2, df_intermedio, by = "Equipo")
}

colnames(df2) <- list('Equipos', 'PPP', 'PPMin', 'PPPos', 'PPT', 'PPT2', 
                     'PPT3', 'Asist', 'AsistT2', 'AsistT3', 'TL_Min',
                     'TL_F', 'RebTot', 'RebOf', 'RebDef')


df_equipos <- rbind(df, df2)


save(df_equipos, file = "df_equipos.RData")

