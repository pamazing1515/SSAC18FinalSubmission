#sampledata <- read.csv(file = "C:/Users/peace/OneDrive/Documents/SLOAN'18/sampledata.csv",header=TRUE, sep=",")
#sampleGSroster <-read.csv(file = "C:/Users/peace/OneDrive/Documents/SLOAN'18/GSroster.csv",header=TRUE, sep=",")
#reads in data sets

totalgame<-read.csv(file="totalseasondata.csv")

##assigns each csv file to a different "nbagame#"
#for (i in 1:1000)
#{
#  nbagame paste("file", i, sep="-")
#  assign(nbagame, read.csv(paste(nbagame,".txt", sep="-")))
#}
#directory=get directory contents
#for loop to process files

sampleGSroster <- totalgame

warplayer_ros <-sampleGSroster$Warriors
cavsplayer_ros <-sampleGSroster$Cavs
hawks_ros <-sampleGSroster$Hawks
celtics <-sampleGSroster$Celtics
nets <-sampleGSroster$Nets
hornets <-sampleGSroster$Hornets
bulls <-sampleGSroster$Bulls
mavs <-sampleGSroster$Mavs
nuggets <-sampleGSroster$Nuggets
pistons <-sampleGSroster$Pistons
rockets <-sampleGSroster$Rockets
pacers <-sampleGSroster$Pacers
clippers <-sampleGSroster$Clippers
lakers <-sampleGSroster$Lakers
grizzlies <-sampleGSroster$Grizzlies
heat <-sampleGSroster$Heat
bucks <-sampleGSroster$Bucks
timberwolves <-sampleGSroster$Timberwolves
pelicans <-sampleGSroster$Pelicans
knicks <-sampleGSroster$Knicks
thunder <-sampleGSroster$Thunder
magic <-sampleGSroster$Magic 
seventy6ers <-sampleGSroster$Seventy6ers
suns <-sampleGSroster$Suns
tblazers <-sampleGSroster$Tblazers
kings <-sampleGSroster$Kings
spurs <-sampleGSroster$Spurs
raptors <-sampleGSroster$Raptors
jazz <-sampleGSroster$Jazz
wizards <-sampleGSroster$Wizards

##assign each factor to correlate with each game
#for(nbagames 1:1000)
#{ 
  #player_id(1:1000)<-nbagame(1:1000)$player
  #block_id(1:1000) <-nbagame(1:1000)$block
  #steals_id(1:1000) <-nbagame(1:1000)$steal
  #pfouls_id(1:1000)<- nbagame(1:1000)$reason
  #charges_id(1:1000) <-nbagame(1:1000)$reason
#}

player_id <- sampledata$player
block_id <- sampledata$block
steals_id <- sampledata$steal
pfouls_id <- sampledata$reason
charges_id <-sampledata$reason
#assigns each column to a variable

##BLOcK DATA IN GENERAL
#nba_block <-intersect(roster(warplayer_ros:wizards), block_id(1:1000)))

#BLOCK DATA FOR GOLDEN STATE WARRIORS
gs_block <- intersect(warplayer_ros, block_id)
#filters sample data into team
block_freq <- table(gs_block)
#shows how many blocks per player from a particular team
block_freq
#displays the blocks per playersas.data.frame(table(gs_block))
as.data.frame(table(gs_block))
#formats the frequency table
gs_nonblock <- setdiff(warplayer_ros, gs_block)
#shows players with no blocks
block_f <- as.data.frame(table(gs_block))
block_f <- block_f[,2]
#pulls frequency from data set
blockdata <- cbind(gs_block, block_f)
#players with blocks and the frequency
nonblockdata <-cbind(gs_nonblock, 0)
#players with no blocks
gsblockdata <- rbind(blockdata, nonblockdata)
df_gsblockdata <- data.frame(gsblockdata)
#combines the rows of all the players and their blocks
finalgsblockdata <- df_gsblockdata[order(df_gsblockdata$gs_block),]

#BLOCK DATA FOR CLEVELAND CAVALIERS
cld_block <- intersect(cavsplayer_ros, block_id)
#filters sample data into team
cldblock_freq <- table(cld_block)
#shows how many blocks per player from a particular team
cldblock_freq
#displays the blocks per playersas.data.frame(table(gs_block))
as.data.frame(table(cld_block))
#formats the frequency table
cld_nonblock <- setdiff(cavsplayer_ros, cld_block)
#shows players with no blocks
cldblock_f <- as.data.frame(table(cld_block))
cldblock_f <- cldblock_f[,2]
#pulls frequency from data set
cldblockdata <- cbind(cld_block, cldblock_f)
#players with blocks and the frequency
cldnonblockdata <-cbind(cld_nonblock, 0)
#players with no blocks
cldblockdata <- rbind(cldblockdata, cldnonblockdata)
cldblockdata
#combines the rows of all the players and their blocks
df_cldblockdata <- data.frame(cldblockdata)
#combines the rows of all the players and their blocks
finalcldblockdata <- df_cldblockdata[order(df_cldblockdata$cld_block),]

##BLOcK STEAL IN GENERAL
#nba_steal <-intersect(roster(warplayer_ros:wizards), steal_id(1:1000)))

#STEALS DATA FOR GOLDEN STATE WARRIORS
gs_steal <- intersect(warplayer_ros, steals_id)
#filters sample data into team
gssteal_freq <- table(gs_steal)
#shows how many steals per player from a particular team
gssteal_freq
#displays the steals per playersas.data.frame(table(gs_steal))
as.data.frame(table(gs_steal))
#formats the frequency table
gs_nonsteal <- setdiff(warplayer_ros, gs_steal)
#shows players with no steals
gssteal_f <- as.data.frame(table(gs_steal))
gssteal_f <- gssteal_f[,2]
#pulls frequency from data set
gsstealdata <- cbind(gs_steal, gssteal_f)
#players with steals and the frequency
gsnonstealdata <-cbind(gs_nonsteal, 0)
#players with no steals
gsstealdata <- rbind(gsstealdata, gsnonstealdata)
gsstealdata
#combines the rows of all the players and their steals
df_gsstealdata <- data.frame(gsstealdata)
#combines the rows of all the players and their steals
finalgsstealdata <- df_gsstealdata[order(df_gsstealdata$gs_steal),]

#STEALS DATA FOR CLEVELAND CAVALIERS
cld_steal <- intersect(cavsplayer_ros, steals_id)
#filters sample data into team
cldsteal_freq <- table(cld_steal)
#shows how many steals per player from a particular team
cldsteal_freq
#displays the steals per playersas.data.frame(table(gs_steal))
as.data.frame(table(cld_steal))
#formats the frequency table
cld_nonsteal <- setdiff(cavsplayer_ros, cld_steal)
#shows players with no steals
cldsteal_f <- as.data.frame(table(cld_steal))
cldsteal_f <- cldsteal_f[,2]
#pulls frequency from data set
cldstealdata <- cbind(cld_steal, cldsteal_f)
#players with steals and the frequency
cldnonstealdata <-cbind(cld_nonsteal, 0)
#players with no steals
cldstealdata <- rbind(cldstealdata, cldnonstealdata)
cldstealdata
#combines the rows of all the players and their steals
df_cldstealdata <- data.frame(cldstealdata)
#combines the rows of all the players and their steals
finalcldstealdata <- df_cldstealdata[order(df_cldstealdata$cld_steal),]

#P. FOULS DATA FOR GOLDEN STATE WARRIORS
player_id
#player_id(1:1000)

#vector of players associated with certain actions
all_pfouls <- which(c(as.character(pfouls_id)) == "p.foul")
#vector of where there were "p.fouls" in reason column
all_pfouls
#vector of the positions
player_pfouls <-player_id [all_pfouls]

##BLOcK PFOULS IN GENERAL
#nba_pfouls <-intersect(roster(warplayer_ros:wizards), player_pfouls(1:1000)))

gs_pfoul <- intersect(warplayer_ros, player_pfouls)
#filters sample data into team
gspfoul_freq <- table(gs_pfoul)
#shows how many personal fouls per player from a particular team
gspfoul_freq
#displays the personal fouls per playersas.data.frame(table(gs_pfoul))
as.data.frame(table(gs_pfoul))
#formats the frequency table
gs_nonpfoul <- setdiff(warplayer_ros, gs_pfoul)
#shows players with no personal fouls
gspfoul_f <- as.data.frame(table(gs_pfoul))
gsppfoul_f <- gspfoul_f[,2]
#pulls frequency from data set
gspfouldata <- cbind(gs_pfoul, gsppfoul_f)
#players with personal fouls and the frequency
gsnonpfouldata <-cbind(gs_nonpfoul, 0)
#players with no personal fouls
goldspfouldata <- rbind(gspfouldata, gsnonpfouldata)
goldspfouldata
#combines the rows of all the players and their personal fouls
df_gspfouldata <- data.frame(goldspfouldata)
#combines the rows of all the players and their steals
finalgspfouldata <- df_gspfouldata[order(df_gspfouldata$gs_pfoul),]

#P. FOULS DATA FOR CLEVELAND CAVALIERS
cld_pfoul <- intersect(cavsplayer_ros, player_pfouls)
#filters sample data into team
cldpfoul_freq <- table(cld_pfoul)
#shows how many personal fouls per player from a particular team
cldpfoul_freq
#displays the personal fouls per playersas.data.frame(table(cld_pfoul))
as.data.frame(table(cld_pfoul))
#formats the frequency table
cld_nonpfoul <- setdiff(cavsplayer_ros, cld_pfoul)
#shows players with no personal fouls
cldpfoul_f <- as.data.frame(table(cld_pfoul))
cldppfoul_f <- cldpfoul_f[,2]
#pulls frequency from data set
cldpfouldata <- cbind(cld_pfoul, cldppfoul_f)
#players with personal fouls and the frequency
cldnonpfouldata <-cbind(cld_nonpfoul, 0)
#players with no personal fouls
clevpfouldata <- rbind(cldpfouldata, cldnonpfouldata)
clevpfouldata
#combines the rows of all the players and their personal fouls
df_cldpfouldata <- data.frame(clevpfouldata)
#combines the rows of all the players and their steals
finalcldpfouldata <- df_cldpfouldata[order(df_cldpfouldata$cld_pfoul),]

#GOLDEN STATE DEFENSIVE SLOPPINESS DATA
# goldenstate_defslop <- cbind(gsblockdata,gsstealdata,goldspfouldata)
# goldenstate_defslop
#gswins <- list(rep(1, 15))
goldenstate_defslop <-data.frame(finalgsblockdata,finalgsstealdata[,2],finalgspfouldata[,2])
goldenstate_defslop

#CLEVELAND DEFENSIVE SLOPPINESS DATA
# cleveland_defslop <- cbind(cldblockdata, cldstealdata,clevpfouldata)
cleveland_defslop <- data.frame(finalcldblockdata,finalcldstealdata[,2],finalcldpfouldata[,2])
cleveland_defslop

#WIN OR LOSS FUNCTION
#PRINT 
#rbing players/factors games (1:1000)

##plots

##coefficients
block= -0.10429
steal=-0.21426
pfouls=0.31855

##gs roster
gsblockroster=c(0, 0, 0.3, 1.6, 1.4, 0, 0, 0, 0,0.6, 0, 0.9, 0, 0, 0.7)
gsstealroster=c(0, 0, 1.8, 1.1, 2.0, 1.0, 0, 0, 0, 0, 0, 0, 0,0.8, 0)
gsfoulroster=c(2.4, 1.0, 2.3, 1.9, 2.2, 1.3, 1.5, 1.6, 1.2, 0.9, 0.9, 1.4, 2.4, 1.8, 1.5)

gsblockstat= block * gsblockroster
gsstealstat= steal * gsstealroster
gsfoulstat= pfouls * gsfoulroster

##clev roster
clblockroster=c(0, 0.5, 0, 0.6, 0, 0, 0, 0, 0, 0, 0, 6.0, 1.1, 0, 0)
clstealroster=c(0, 0, 1.2, 1.2, 0, 0, 0, 0, 0.9, 0.8, 1.0, 0, 0, 0, 0)
clfoulroster=c(0.9, 1.9, 2.2, 1.8, 1.9, 1.0, 0, 1.7, 2.1, 2.0, 1.9, 3.0, 2.3, 1.8, 1.1)

clblockstat= block*clblockroster
clstealstat= steal*clstealroster
clfoulstat= pfouls*clfoulroster

##xplot
gs_xplot = gsblockstat + gsstealstat + gsfoulstat
cl_xplot = clblockstat + clstealstat + clfoulstat

##yplot
gs_yplot = c(87, 76, 90, 88, 71, 71, 30, 70, 62, 50, 79, 51, 78, 86, 77)
cl_yplot = c(56, 78, 83, 54, 76, 32, 54, 45, 65, 76, 56, 43, 43, 43, 43)

plot(gs_xplot, gs_yplot,main="Down the Stretch Decisions", xlab="NBA Defensive Sloppiness", xlim=c(1,0), ylab="Season Free Throw%",ylim=c(40,99), col="yellow", pch=19, cex=5)
gsnames= c("22", "21", "30", "35", "23", "9", "15", "34", "5", "20", "0", "1", "27", "11", "3")
#gsnames= c("Barnes", "Clark", "Curry","Durant","Green", "Iguodala", "Jones", "Livingston", "Looney","McAdoo", "McCaw", "McGee", "Pachulia","Thompson", "West")

#points(cl_xplot,cl_yplot, col="red",pch=19,cex=5)
clnames= c("Felder","Frye","Irving","James","Jefferson", "Jones D.","Jones J.", "Korver", "Love", "Shumpert", "Smith", "Tavares", "Thompson", "Williams Deron", "Williams Derrick")

text(gs_xplot,gs_yplot, labels=gsnames)
#text(cl_xplot,cl_yplot, labels=clnames, col ="white")

legend("bottomleft", inset=c(0,0), c("Golden State Warriors"),fill=c("yellow"),horiz =TRUE)

gs_xplot
