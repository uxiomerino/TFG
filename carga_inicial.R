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


df3 <- data.frame(matrix(ncol = 0, nrow = 318))
# LigaACB 2023/24
PPP2 <- read_csv("Puntos_.csv")
PPMin2 <- read_csv("PPMin_.csv")
PPPos2 <- read_csv("PPPos_.csv")
boxscore2 <- read_csv("BS_.csv")
bs2 <- boxscore2[, c(3, 23:40)]
PPT2 <- read_csv("PPT_.csv")
PPT22 <- read_csv("PPT2_.csv")
PPT32 <- read_csv("PPT3_.csv")
TCInt2 <- read_csv("TCInt_.csv")
T2Inte2 <- read_csv("T2Int_.csv")
T3Int2 <- read_csv("T3Int_.csv")
Ptos2 <- read_csv("%Ptos_.csv")
Ptos22 <- read_csv("%Ptos2_.csv")
Ptos32 <- read_csv("%Ptos3_.csv")
TAsist2 <- read_csv("%TAsist_.csv")
T2Asist2 <- read_csv("%T2Asist_.csv")
T3Asist2 <- read_csv("%T3Asist_.csv")
TL_Min2 <- read_csv("TL_Min_.csv")
TL_F2 <- read_csv("TL_F_.csv")
RebTot2 <- read_csv("RebTot_.csv")
RebOf2 <- read_csv("RebOf_.csv")
RebDef2 <- read_csv("RebDef_.csv")
Asist2 <- read_csv("%Asist_.csv")
TO2 <- read_csv("TO_.csv")
LE2 <- read_csv("LE_.csv")

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

setwd("~/GCED/TFG/Datos")
save(df3, file="df3.RData")



# Quintetos con diferencia como métrica
quintetos1 <- read_csv("quintetos1.csv")
quintetos2 <- read_csv("quintetos2.csv")
quintetos <- rbind(quintetos2, quintetos1)
quintetos$Diferencia <- (quintetos$`Valor Equipo` - quintetos$`Valor Rival`) / quintetos$Minutos
quintetos <- quintetos[, c("Equipo", "Xogadores", "Minutos", "Diferencia")]
quintetos$Ano <- rep("2023/24", length(quintetos$Xogadores))
head(quintetos)

quintetos22_23 <- rbind(read_csv("quintetos22-23_1.csv"), read_csv("quintetos22-23_2.csv"))
quintetos22_23$Diferencia <- quintetos22_23$`Valor Xogadores` - quintetos22_23$`Valor Rival`
quintetos22_23 <- quintetos22_23[, c("Equipo", "Xogadores", "Minutos", "Diferencia")]
quintetos22_23$Ano <- rep("2022/23", length(quintetos22_23$Xogadores))
head(quintetos22_23)

quintetos <- rbind(quintetos22_23, quintetos)

head(quintetos)
tail(quintetos)


save(quintetos, file = "quintetos.RData")





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




# Liga ACB 2022/23 Obradoiro
PPP_Obra_2324 <- as.data.frame(read_csv("PPP_Obra_2324.csv")[, c('Xornada', 'Valor Equipo', 'Valor Rival')])
PPPos_Obra_2324 <- read_csv("PPPos_Obra_2324.csv")[, c('Xornada', 'Valor Equipo')]
PPT_Obra_2324 <- read_csv("PPT_Obra_2324.csv")[, c('Xornada', 'Valor Equipo')]
PPT2_Obra_2324 <- read_csv("PPT2_Obra_2324.csv")[, c('Xornada', 'Valor Equipo')]
PPT3_Obra_2324 <- read_csv("PPT3_Obra_2324.csv")[, c('Xornada', 'Valor Equipo')]
TAsist_Obra_2324 <- read_csv("TAsist_Obra_2324.csv")[, c('Xornada', 'Valor Equipo')]
T2Asist_Obra_2324 <- read_csv("T2Asist_Obra_2324.csv")[, c('Xornada', 'Valor Equipo')]
T3Asist_Obra_2324 <- read_csv("T3Asist_Obra_2324.csv")[, c('Xornada', 'Valor Equipo')]
TL_Min_Obra_2324 <- read_csv("TL_Min_Obra_2324.csv")[, c('Xornada', 'Valor Equipo')]
TL_F_Obra_2324 <- read_csv("TL_F_Obra_2324.csv")[, c('Xornada', 'Valor Equipo')]
RebTot_Obra_2324 <- read_csv("RebTot_Obra_2324.csv")[, c('Xornada', 'Valor Equipo')]
RebOf_Obra_2324 <- read_csv("RebOf_Obra_2324.csv")[, c('Xornada', 'Valor Equipo')]
RebDef_Obra_2324 <- read_csv("RebDef_Obra_2324.csv")[, c('Xornada', 'Valor Equipo')]
boxscore_Obra_2324 <- read_csv("BS_Obra_2324.csv")
boxscore_perdida_Obra_2324 <- read_csv("BS_Per_Obra_2324.csv")[, c('Xornada', 'Pts...3')]
boxscore_RebOf_Obra_2324 <- read_csv("BS_RebOf_Obra_2324.csv")[, c('Xornada', 'Pts...3')]

PPP_Obra_2324 <- PPP_Obra_2324[PPP_Obra_2324$Xornada != 0, ]
PPP_Obra_2324$Resultado <- PPP_Obra_2324$`Valor Equipo` - PPP_Obra_2324$`Valor Rival`
df_Obra_2324 <- PPP_Obra_2324[, c('Xornada','Resultado')]

df_Obra_2324$PPPos <- df_Obra_2324[df_Obra_2324$Xornada != 0, ]$`Valor Equipo`
df_Obra_2324$PPT <- PPT_Obra_2324[PPT_Obra_2324$Xornada != 0, ]$`Valor Equipo`
df_Obra_2324$PPT2 <- PPT2_Obra_2324[PPT2_Obra_2324$Xornada != 0, ]$`Valor Equipo`
df_Obra_2324$PPT3 <- PPT3_Obra_2324[PPT3_Obra_2324$Xornada != 0, ]$`Valor Equipo`
df_Obra_2324$TAsist <- TAsist_Obra_2324[TAsist_Obra_2324$Xornada != 0, ]$`Valor Equipo`
df_Obra_2324$T2Asist <- T2Asist_Obra_2324[T2Asist_Obra_2324$Xornada != 0, ]$`Valor Equipo`
df_Obra_2324$T3Asist <- T3Asist_Obra_2324[T3Asist_Obra_2324$Xornada != 0, ]$`Valor Equipo`
df_Obra_2324$TL_Min <- TL_Min_Obra_2324[TL_Min_Obra_2324$Xornada != 0, ]$`Valor Equipo`
df_Obra_2324$TL_F <- TL_F_Obra_2324[TL_F_Obra_2324$Xornada != 0, ]$`Valor Equipo`
df_Obra_2324$RebTot <- RebTot_Obra_2324[RebTot_Obra_2324$Xornada != 0, ]$`Valor Equipo`
df_Obra_2324$RebOf <- RebOf_Obra_2324[RebOf_Obra_2324$Xornada != 0, ]$`Valor Equipo`
df_Obra_2324$RebDef <- RebDef_Obra_2324[RebDef_Obra_2324$Xornada != 0, ]$`Valor Equipo`

boxscore_Obra_2324 <- boxscore_Obra_2324[boxscore_Obra_2324$Xornada != 0, ]
boxscore_perdida_Obra_2324 <- boxscore_perdida_Obra_2324[boxscore_perdida_Obra_2324$Xornada != 0, ]
boxscore_RebOf_Obra_2324 <- boxscore_RebOf_Obra_2324[boxscore_RebOf_Obra_2324$Xornada != 0, ]

df_Obra_2324$'%TL' <- boxscore_Obra_2324$`TL%...9`
df_Obra_2324$Asist <- boxscore_Obra_2324$As...12
df_Obra_2324$TO <- boxscore_Obra_2324$Pér...13
df_Obra_2324$Rec <- boxscore_Obra_2324$Rec...14
df_Obra_2324$TRea <- boxscore_Obra_2324$T.Rea...15
df_Obra_2324$FRea <- boxscore_Obra_2324$F.Rea...17
RebOf <- boxscore_Obra_2324$RO...10
df_Obra_2324$Ptos_Perdida <- boxscore_perdida_Obra_2324$Pts...3
df_Obra_2324$Ptos_RebOf <- boxscore_RebOf_Obra_2324$Pts...3

head(df_Obra_2324)
setwd("~/GCED/TFG/Datos")
save(df_Obra_2324, file = "df_Obra_2324.RData")


# Liga ACB 2022/23 Bilbao Basket
PPP_Bilbao <- as.data.frame(read_csv("PPP_Bilbao.csv")[, c('Xornada', 'Valor Equipo', 'Valor Rival')])
PPPos_Bilbao <- read_csv("PPPos_Bilbao.csv")[, c('Xornada', 'Valor Equipo')]
PPT_Bilbao <- read_csv("PPT_Bilbao.csv")[, c('Xornada', 'Valor Equipo')]
PPT2_Bilbao <- read_csv("PPT2_Bilbao.csv")[, c('Xornada', 'Valor Equipo')]
PPT3_Bilbao <- read_csv("PPT3_Bilbao.csv")[, c('Xornada', 'Valor Equipo')]
TAsist_Bilbao <- read_csv("TAsist_Bilbao.csv")[, c('Xornada', 'Valor Equipo')]
T2Asist_Bilbao <- read_csv("T2Asist_Bilbao.csv")[, c('Xornada', 'Valor Equipo')]
T3Asist_Bilbao <- read_csv("T3Asist_Bilbao.csv")[, c('Xornada', 'Valor Equipo')]
TL_Min_Bilbao <- read_csv("TL_Min_Bilbao.csv")[, c('Xornada', 'Valor Equipo')]
TL_F_Bilbao <- read_csv("TL_F_Bilbao.csv")[, c('Xornada', 'Valor Equipo')]
RebTot_Bilbao <- read_csv("RebTot_Bilbao.csv")[, c('Xornada', 'Valor Equipo')]
RebOf_Bilbao <- read_csv("RebOf_Bilbao.csv")[, c('Xornada', 'Valor Equipo')]
RebDef_Bilbao <- read_csv("RebDef_Bilbao.csv")[, c('Xornada', 'Valor Equipo')]
boxscore_Bilbao <- read_csv("BS_Bilbao.csv")
boxscore_perdida_Bilbao <- read_csv("BS_Per_Bilbao.csv")[, c('Xornada', 'Pts...3')]
boxscore_RebOf_Bilbao <- read_csv("BS_RebOf_Bilbao.csv")[, c('Xornada', 'Pts...3')]
TCInt_Bilbao <- c(48, 41, 40, 51, 37, 48, 46, 34, 35, 35, 33, 37, 36, 43, 38, 35, 43, 34, 50, 43, 45, 39, 31, 32, 40, 34, 28, 29, 33)
TLInt_Bilbao <- c(17, 18, 13, 20, 26, 11, 28, 12, 23, 21, 20, 19, 8, 14, 30, 19, 18, 15, 6, 12, 21, 15, 18, 22, 22, 11, 25, 20, 11)
Mins_Bilbao <- c(40, 40, 40, 40, 40, 40, 45, 40, 40, 40, 40, 40, 40, 40, 40, 40, 40, 40, 40, 40, 40, 40, 40, 40, 40, 40, 40, 40, 40)

PPP_Bilbao <- PPP_Bilbao[PPP_Bilbao$Xornada != 0, ]
PPP_Bilbao$Resultado <- PPP_Bilbao$`Valor Equipo` - PPP_Bilbao$`Valor Rival`
df_Bilbao <- PPP_Bilbao[, c('Xornada','Resultado')]

df_Bilbao$PPPos <- df_Bilbao[df_Bilbao$Xornada != 0, ]$`Valor Equipo`
df_Bilbao$PPT <- PPT_Bilbao[PPT_Bilbao$Xornada != 0, ]$`Valor Equipo`
df_Bilbao$PPT2 <- PPT2_Bilbao[PPT2_Bilbao$Xornada != 0, ]$`Valor Equipo`
df_Bilbao$PPT3 <- PPT3_Bilbao[PPT3_Bilbao$Xornada != 0, ]$`Valor Equipo`
df_Bilbao$TAsist <- TAsist_Bilbao[TAsist_Bilbao$Xornada != 0, ]$`Valor Equipo`
df_Bilbao$T2Asist <- T2Asist_Bilbao[T2Asist_Bilbao$Xornada != 0, ]$`Valor Equipo`
df_Bilbao$T3Asist <- T3Asist_Bilbao[T3Asist_Bilbao$Xornada != 0, ]$`Valor Equipo`
df_Bilbao$TL_Min <- TL_Min_Bilbao[TL_Min_Bilbao$Xornada != 0, ]$`Valor Equipo`
df_Bilbao$TL_F <- TL_F_Bilbao[TL_F_Bilbao$Xornada != 0, ]$`Valor Equipo`
df_Bilbao$RebTot <- RebTot_Bilbao[RebTot_Bilbao$Xornada != 0, ]$`Valor Equipo`
df_Bilbao$RebOf <- RebOf_Bilbao[RebOf_Bilbao$Xornada != 0, ]$`Valor Equipo`
df_Bilbao$RebDef <- RebDef_Bilbao[RebDef_Bilbao$Xornada != 0, ]$`Valor Equipo`

boxscore_Bilbao <- boxscore_Bilbao[boxscore_Bilbao$Xornada != 0, ]
boxscore_perdida_Bilbao <- boxscore_perdida_Bilbao[boxscore_perdida_Bilbao$Xornada != 0, ]
boxscore_RebOf_Bilbao <- boxscore_RebOf_Bilbao[boxscore_RebOf_Bilbao$Xornada != 0, ]

df_Bilbao$'%TL' <- boxscore_Bilbao$`TL%...9`
df_Bilbao$Asist <- boxscore_Bilbao$As...12
df_Bilbao$TO <- boxscore_Bilbao$Pér...13
df_Bilbao$Rec <- boxscore_Bilbao$Rec...14
df_Bilbao$TRea <- boxscore_Bilbao$T.Rea...15
df_Bilbao$FRea <- boxscore_Bilbao$F.Rea...17
RebOf <- boxscore_Bilbao$RO...10
df_Bilbao$Ptos_Perdida <- boxscore_perdida_Bilbao$Pts...3
df_Bilbao$Ptos_RebOf <- boxscore_RebOf_Bilbao$Pts...3

df_Bilbao$RitmoXogo <- (TCInt_Bilbao + df_Bilbao$TO - RebOf + TLInt_Bilbao * 0.44) * 40 / Mins_Bilbao

head(df_Bilbao)
setwd("~/GCED/TFG/Datos")
save(df_Bilbao, file = "df_Bilbao.RData")




# Liga ACB vars
PPT_1 <- read_csv("PPT_2223_1.csv")
PPT_2 <- read_csv("PPT_2223_2.csv")
PPT_3 <- read_csv("PPT_2324_1.csv")
PPT_4 <- read_csv("PPT_2324_2.csv")

df_PPT_1 <- rbind(PPT_1[ , c('Xogadores', 'Equipo', 'Minutos', 'Media')], PPT_2[, c('Xogadores', 'Equipo', 'Minutos', 'Media')])
df_PPT_1$Ano <- rep("2022/23", length(df_PPT_1$Equipo))
df_PPT_2 <- rbind(PPT_3[ , c('Xogadores', 'Equipo', 'Minutos', 'Media')], PPT_4[, c('Xogadores', 'Equipo', 'Minutos', 'Media')])
df_PPT_2$Ano <- rep("2023/24", length(df_PPT_2$Equipo))

df_PPT <- rbind(df_PPT_1, df_PPT_2)

head(df_PPT)
tail(df_PPT)
save(df_PPT, file = "df_PPT.RData")



RebDef_1 <- read_csv("RebDef_2324_1.csv")
RebDef_2 <- read_csv("RebDef_2324_2.csv")

df_RebDef <- rbind(RebDef_1[ , c('Xogadores', 'Equipo', 'Minutos', 'Media')], RebDef_2[, c('Xogadores', 'Equipo', 'Minutos', 'Media')])
head(df_RebDef)
save(df_RebDef, file = "df_RebDef.RData")





# Quintetos Obradoiro

TO_5_Obra <- read.csv("%TO_5_Obra.csv")
Asist_5_Obra <- read.csv("%Asist_5_Obra.csv")
RebDef_5_Obra <- read.csv("RebDef_5_Obra.csv")
RebOf_5_Obra <- read.csv("RebOf_5_Obra.csv")
RebTot_5_Obra <- read.csv("RebTot_5_Obra.csv")
TL_F_5_Obra <- read.csv("TL_F_5_Obra.csv")
TL_Min_5_Obra <- read.csv("TL_Min_5_Obra.csv")
T3Asist_5_Obra <- read.csv("T3Asist_5_Obra.csv")
T2Asist_5_Obra <- read.csv("T2Asist_5_Obra.csv")
TAsist_5_Obra <- read.csv("TAsist_5_Obra.csv")
PPT3_5_Obra <- read.csv("PPT3_5_Obra.csv")
PPT2_5_Obra <- read.csv("PPT2_5_Obra.csv")
PPT_5_Obra <- read.csv("PPT_5_Obra.csv")
PPPos_5_Obra <- read.csv("PPPos_5_Obra.csv")
PPMin_5_Obra <- read.csv("PPMin_5_Obra.csv")
Puntos_5_Obra <- read.csv("Puntos_5_Obra.csv")

quintetos_obradoiro <- data.frame(Xogadores = PPMin_5_Obra$Xogadores, Minutos = PPMin_5_Obra$Minutos, PPMin = PPMin_5_Obra$Media, PPPos = PPPos_5_Obra$Media, PPT = PPT_5_Obra$Media,
                                  PPT2 = PPT2_5_Obra$Media, PPT3 = PPT3_5_Obra$Media, TAsist = TAsist_5_Obra$Media, 
                                  T2Asist = T2Asist_5_Obra$Media, T3Asist = T3Asist_5_Obra$Media, TL_Min = TL_Min_5_Obra$Media,
                                  TL_F = TL_F_5_Obra$Media, RebTot = RebTot_5_Obra$Media, RebDef = RebDef_5_Obra$Media, 
                                  RebOf = RebOf_5_Obra$Media, Asist = Asist_5_Obra$Media, TO = TO_5_Obra$Media, Diferencia = (Puntos_5_Obra$Valor.Equipo - Puntos_5_Obra$Valor.Rival))
head(quintetos_obradoiro)

setwd("~/GCED/TFG/Datos")
save(quintetos_obradoiro, file = "quintetos_obradoiro.RData")


setwd("~/GCED/TFG/Datos/Intermedios")
# Quintetos globais (parte 1)
TO_5<- read.csv("TO_5.csv")
Asist_5 <- read.csv("%Asist_5.csv")
RebDef_5 <- read.csv("RebDef_5.csv")
RebOf_5 <- read.csv("RebOf_5.csv")
RebTot_5 <- read.csv("RebTot_5.csv")
TL_F_5 <- read.csv("TL_F_5.csv")
TL_Min_5 <- read.csv("TL_Min_5.csv")
T3Asist_5 <- read.csv("T3Asist_5.csv")
T2Asist_5 <- read.csv("T2Asist_5.csv")
TAsist_5 <- read.csv("TAsist_5.csv")
PPT3_5 <- read.csv("PPT3_5.csv")
PPT2_5 <- read.csv("PPT2_5.csv")
PPT_5 <- read.csv("PPT_5.csv")
PPPos_5 <- read.csv("PPPos_5.csv")
PPMin_5 <- read.csv("PPMin_5.csv")
Puntos_5 <- read.csv("Puntos_5.csv")

TO_51<- read.csv("TO_51.csv")
Asist_51 <- read.csv("Asist_51.csv")
RebDef_51 <- read.csv("RebDef_51.csv")
RebOf_51 <- read.csv("RebOf_51.csv")
RebTot_51 <- read.csv("RebTot_51.csv")
TL_F_51 <- read.csv("TL_F_51.csv")
TL_Min_51 <- read.csv("TL_Min_51.csv")
T3Asist_51 <- read.csv("T3Asist_51.csv")
T2Asist_51 <- read.csv("T2Asist_51.csv")
TAsist_51 <- read.csv("TAsist_51.csv")
PPT3_51 <- read.csv("PPT3_51.csv")
PPT2_51 <- read.csv("PPT2_51.csv")
PPT_51 <- read.csv("PPT_51.csv")
PPPos_51 <- read.csv("PPPos_51.csv")
PPMin_51 <- read.csv("PPMin_51.csv")
Puntos_51 <- read.csv("Puntos_51.csv")


TO_5 <- rbind(TO_5, TO_51)
Asist_5 <- rbind(Asist_5, Asist_51)
RebDef_5 <- rbind(RebDef_5,RebDef_51)
RebOf_5 <- rbind(RebOf_5, RebOf_51)
RebTot_5 <- rbind(RebTot_5, RebTot_51)
TL_F_5 <- rbind(TL_F_5, TL_F_51)
TL_Min_5 <- rbind(TL_Min_5, TL_Min_51)
T3Asist_5 <- rbind(T3Asist_5, T3Asist_51)
T2Asist_5 <- rbind(T2Asist_5, T2Asist_51)
TAsist_5 <- rbind(TAsist_5, TAsist_51)
PPT3_5 <- rbind(PPT3_5, PPT3_51)
PPT2_5 <- rbind(PPT2_5, PPT2_51)
PPT_5 <- rbind(PPT_5, PPT_51)
PPPos_5 <- rbind(PPPos_5, PPPos_51)
PPMin_5 <- rbind(PPMin_5, PPMin_51)
Puntos_5 <- rbind(Puntos_5, Puntos_51)




quintetos_global <- data.frame(Xogadores = PPMin_5$Xogadores, Equipo = PPMin_5$Equipo, Minutos = PPMin_5$Minutos, PPMin = PPMin_5$Media, PPPos = PPPos_5$Media, PPT = PPT_5$Media,
                                  PPT2 = PPT2_5$Media, PPT3 = PPT3_5$Media, TAsist = TAsist_5$Media, 
                                  T2Asist = T2Asist_5$Media, T3Asist = T3Asist_5$Media, TL_Min = TL_Min_5$Media,
                                  TL_F = TL_F_5$Media, RebTot = RebTot_5$Media, RebDef = RebDef_5$Media, 
                                  RebOf = RebOf_5$Media, Asist = Asist_5$Media, TO = TO_5$Media, Diferencia = (Puntos_5$Valor.Equipo - Puntos_5$Valor.Rival))
head(quintetos_global)

setwd("~/GCED/TFG/Datos")
save(quintetos_global, file = "quintetos_global.RData")




setwd("~/GCED/TFG/Datos/Intermedios")
# Quintetos globais (parte 1)
TOObra<- read.csv("%TOObra.csv")
AsistObra <- read.csv("%AsistObra.csv")
RebDefObra <- read.csv("RebDefObra.csv")
RebOfObra <- read.csv("RebOfObra.csv")
RebTotObra <- read.csv("RebTotObra.csv")
TL_FObra <- read.csv("TL_FObra.csv")
TL_MinObra <- read.csv("TL_MinObra.csv")
T3AsistObra <- read.csv("T3AsistObra.csv")
T2AsistObra <- read.csv("T2AsistObra.csv")
TAsistObra <- read.csv("TAsistObra.csv")
PPT3Obra <- read.csv("PPT3Obra.csv")
PPT2Obra <- read.csv("PPT2Obra.csv")
PPTObra <- read.csv("PPTObra.csv")
PPPosObra <- read.csv("PPPosObra.csv")
PPMinObra <- read.csv("PPMinObra.csv")
PuntosObra <- read.csv("PuntosObra.csv")



quintetos_obra <- data.frame(Xogadores = PPMinObra$Xogadores, Minutos = PPMinObra$Minutos, PPMin = PPMinObra$Media, PPPos = PPPosObra$Media, PPT = PPTObra$Media,
                               PPT2 = PPT2Obra$Media, PPT3 = PPT3Obra$Media, TAsist = TAsistObra$Media, 
                               T2Asist = T2AsistObra$Media, T3Asist = T3AsistObra$Media, TL_Min = TL_MinObra$Media,
                               TL_F = TL_FObra$Media, RebTot = RebTotObra$Media, RebDef = RebDefObra$Media, 
                               RebOf = RebOfObra$Media, Asist = AsistObra$Media, TO = TOObra$Media, Diferencia = (PuntosObra$Valor.Equipo - PuntosObra$Valor.Rival))
head(quintetos_obra)

setwd("~/GCED/TFG/Datos")
save(quintetos_obra, file = "quintetos_obra.RData")



