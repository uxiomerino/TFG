library(readr)
library(dplyr)
library(tidyr)

setwd("~/GCED/TFG/Datos/Intermedios")

df <- data.frame(matrix(ncol = 0, nrow = 330))
# Liga ACB 2023/24
tfg <- read_csv("tfg.csv")
tfg1 <- read_csv("PPMin.csv")
tfg2 <- read_csv("PPPos.csv")
boxscore <- read_csv("boxscore.csv")
head(boxscore)
bs <- boxscore[, c(3, 23:40)]
PPT <- read_csv("PPt.csv")
PPT2 <- read_csv("PPT2.csv")
PPT3 <- read_csv("PPT3.csv")
TCInt <- read_csv("%TCInt.csv")
T2Inte <- read_csv("%T2Int.csv")
T3Int <- read_csv("%T3Int.csv")
Ptos <- read_csv("%Ptos.csv")
Ptos2 <- read_csv("%2Ptos.csv")
Ptos3 <- read_csv("%3Ptos.csv")
TAsist <- read_csv("%TAsist.csv")
T2Asist <- read_csv("%T2Asist.csv")
T3Asist <- read_csv("%T3Asist.csv")
TL_Min <- read_csv("TL_min.csv")
TL_F <- read_csv("TL_F.csv")
RebTot <- read_csv("%Reb.csv")
RebOf <- read_csv("%RebOf.csv")
RebDef <- read_csv("%RebDef.csv")
Asist <- read_csv("%Asist.csv")
TO <- read_csv("%TO.csv")
LE <- read_csv("LE.csv")

df$Equipo <- tfg$Equipo
df$Xogador <- tfg$Xogadores
df$Mins <- tfg$Minutos
df$PPP <- tfg$Media
df$PPMin <- tfg1$Media
df$PPPos <- tfg2$Media
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


df3 <- data.frame(matrix(ncol = 0, nrow = 313))
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
TAsist2 <- read_csv("%TAsist2.csv")
T2Asist2 <- read_csv("%T2Asist2.csv")
T3Asist2 <- read_csv("%T3Asist2.csv")
TL_Min2 <- read_csv("TL_Min2.csv")
TL_F2 <- read_csv("TL_F2.csv")
RebTot2 <- read_csv("%Reb2.csv")
RebOf2 <- read_csv("%RebOf2.csv")
RebDef2 <- read_csv("%RebDef2.csv")
Asist2 <- read_csv("%Asist2.csv")
TO2 <- read_csv("%TO2.csv")
LE2 <- read_csv("LE2.csv")

df3$Equipo <- PPP2$Equipo
df3$Xogador <- PPP2$Xogadores
df3$Mins <- PPP2$Minutos
df3$PPP <- PPP2$Media
df3$PPMin <- PPMin2$Media
df3$PPPos <- PPPos2$Media
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




quintetos1 <- read_csv("quintetos1.csv")
quintetos2 <- read_csv("quintetos2.csv")
quintetos <- rbind(quintetos2, quintetos1)
quintetos$Diferencia <- (quintetos$`Valor Equipo` - quintetos$`Valor Rival`) / quintetos$Minutos
quintetos <- quintetos[, c("Equipo", "Xogadores", "Minutos", "Diferencia")]
head(quintetos)
save(quintetos, file = "quintetos.RData")

quintetos22_23 <- rbind(read_csv("quintetos22-23_1.csv"), read_csv("quintetos22-23_2.csv"))
quintetos22_23$Diferencia <- quintetos22_23$`Valor Xogadores` - quintetos22_23$`Valor Rival`
quintetos22_23 <- quintetos22_23[, c("Equipo", "Xogadores", "Minutos", "Diferencia")]
head(quintetos22_23)
save(quintetos22_23, file = "quintetos22-23.RData")









# Liga ACB 2023/24 EQUIPOS
PPP_Eq <- as.data.frame(read_csv("PPP_Eq.csv")[, c('Xornada', 'Valor Equipo', 'Valor Rival')])
PPPos_Eq <- read_csv("PPPos_Eq.csv")[, c('Xornada', 'Valor Equipo')]
PPT_Eq <- read_csv("PPT_Eq.csv")[, c('Xornada', 'Valor Equipo')]
PPT2_Eq <- read_csv("PPT2_Eq.csv")[, c('Xornada', 'Valor Equipo')]
PPT3_Eq <- read_csv("PPT3_Eq.csv")[, c('Xornada', 'Valor Equipo')]
TAsist_Eq <- read_csv("%TAsist_Eq.csv")[, c('Xornada', 'Valor Equipo')]
T2Asist_Eq <- read_csv("%T2Asist_Eq.csv")[, c('Xornada', 'Valor Equipo')]
T3Asist_Eq <- read_csv("%T3Asist_Eq.csv")[, c('Xornada', 'Valor Equipo')]
TL_Min_Eq <- read_csv("TL_Min_Eq.csv")[, c('Xornada', 'Valor Equipo')]
TL_F_Eq <- read_csv("TL_F_Eq.csv")[, c('Xornada', 'Valor Equipo')]
RebTot_Eq <- read_csv("%Reb_Eq.csv")[, c('Xornada', 'Valor Equipo')]
RebOf_Eq <- read_csv("%RebOf_Eq.csv")[, c('Xornada', 'Valor Equipo')]
RebDef_Eq <- read_csv("%RebDef_Eq.csv")[, c('Xornada', 'Valor Equipo')]
boxscore <- read_csv("boxscore_Eq.csv")[, c('Xornada', 'Equipos', 'TL%...9', 'Pér...13', "As...12", 'Rec...14', 'T.Rea...15', 'F.Rea...17')]



PPP_Eq <- PPP_Eq[PPP_Eq$Xornada != 0, ]
PPP_Eq$Resultado <- PPP_Eq$`Valor Equipo` - PPP_Eq$`Valor Rival`
df_equipos <- PPP_Eq[, c('Xornada','Resultado')]

df_equipos$PPPos <- PPPos_Eq[PPPos_Eq$Xornada != 0, ]$`Valor Equipo`
df_equipos$PPT <- PPT_Eq[PPT_Eq$Xornada != 0, ]$`Valor Equipo`
df_equipos$PPT2 <- PPT2_Eq[PPT2_Eq$Xornada != 0, ]$`Valor Equipo`
df_equipos$PPT3 <- PPT3_Eq[PPT3_Eq$Xornada != 0, ]$`Valor Equipo`
df_equipos$TAsist <- TAsist_Eq[TAsist_Eq$Xornada != 0, ]$`Valor Equipo`
df_equipos$T2Asist <- T2Asist_Eq[T2Asist_Eq$Xornada != 0, ]$`Valor Equipo`
df_equipos$T3Asist <- T3Asist_Eq[T3Asist_Eq$Xornada != 0, ]$`Valor Equipo`
df_equipos$TL_Min <- TL_Min_Eq[TL_Min_Eq$Xornada != 0, ]$`Valor Equipo`
df_equipos$TL_F <- TL_F_Eq[TL_F_Eq$Xornada != 0, ]$`Valor Equipo`
df_equipos$RebTot <- RebTot_Eq[RebTot_Eq$Xornada != 0, ]$`Valor Equipo`
df_equipos$RebOf <- RebOf_Eq[RebOf_Eq$Xornada != 0, ]$`Valor Equipo`
df_equipos$RebDef <- RebDef_Eq[RebDef_Eq$Xornada != 0, ]$`Valor Equipo`

boxscore <- boxscore[boxscore$Xornada != 0, ]
boxscore <- boxscore[order(boxscore$Equipos), ]

df_equipos$'%TL' <- boxscore$`TL%...9`
df_equipos$Asist <- boxscore$As...12
df_equipos$TO <- boxscore$Pér...13
df_equipos$Rec <- boxscore$Rec...14
df_equipos$TRea <- boxscore$T.Rea...15
df_equipos$FRea <- boxscore$F.Rea...17

head(df_equipos)

save(df_equipos, file = "df_equipos.RData")







# Liga ACB 2023/24
PPT_1 <- read_csv("PPT_2223_1.csv")
PPT_2 <- read_csv("PPT_2223_2.csv")

df_PPT <- rbind(PPT_1[ , c('Xogadores', 'Equipo', 'Minutos', 'Media')], PPT_2[, c('Xogadores', 'Equipo', 'Minutos', 'Media')])
save(df_PPT, file = "df_PPT.RData")

RebDef_1 <- read_csv("RebDef_2324_1.csv")
RebDef_2 <- read_csv("RebDef_2324_2.csv")

df_RebDef <- rbind(RebDef_1[ , c('Xogadores', 'Equipo', 'Minutos', 'Media')], RebDef_2[, c('Xogadores', 'Equipo', 'Minutos', 'Media')])
head(df_RebDef)
save(df_RebDef, file = "df_RebDef.RData")

