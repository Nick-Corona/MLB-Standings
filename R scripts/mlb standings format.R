
# setwd("") this is where i define the working directory

AL_East <- data.frame(matrix(ncol=20,nrow=0, 
                             dimnames=list(NULL, c("NYY_wins", "NYY_loses", "NYY_perc", "NYY_gb",
                                                   "TB_wins", "TB_loses", "TB_perc", "TB_gb",
                                                   "BOS_wins", "BOS_loses", "BOS_perc", "BOS_gb",
                                                   "BAL_wins", "BAL_loses", "BAL_perc", "BAL_gb",
                                                   "TOR_wins", "TOR_loses", "TOR_perc", "TOR_gb"))))
AL_Central <- data.frame(matrix(ncol=20,nrow=0, 
                             dimnames=list(NULL, c("MIN_wins", "MIN_loses", "MIN_perc", "MIN_gb",
                                                   "CLE_wins", "CLE_loses", "CLE_perc", "CLE_gb",
                                                   "CHW_wins", "CHW_loses", "CHW_perc", "CHW_gb",
                                                   "KC_wins", "KC_loses", "KC_perc", "KC_gb",
                                                   "DET_wins", "DET_loses", "DET_perc", "DET_gb"))))
AL_West <- data.frame(matrix(ncol=20,nrow=0, 
                              dimnames=list(NULL, c("HOU_wins", "HOU_loses", "HOU_perc", "HOU_gb",
                                                    "TEX_wins", "TEX_loses", "TEX_perc", "TEX_gb",
                                                    "OAK_wins", "OAK_loses", "OAK_perc", "OAK_gb",
                                                    "LAA_wins", "LAA_loses", "LAA_perc", "LAA_gb",
                                                    "SEA_wins", "SEA_loses", "SEA_perc", "SEA_gb"))))
NL_East <- data.frame(matrix(ncol=20,nrow=0, 
                             dimnames=list(NULL, c("NYM_wins", "NYM_loses", "NYM_perc", "NYM_gb",
                                                   "WSN_wins", "WSN_loses", "WSN_perc", "WSN_gb",
                                                   "PHI_wins", "PHI_loses", "PHI_perc", "PHI_gb",
                                                   "ATL_wins", "ATL_loses", "ATL_perc", "ATL_gb",
                                                   "MIA_wins", "MIA_loses", "MIA_perc", "MIA_gb"))))
NL_Central <- data.frame(matrix(ncol=20,nrow=0, 
                              dimnames=list(NULL, c("CHC_wins", "CHC_loses", "CHC_perc", "CHC_gb",
                                                    "MIL_wins", "MIL_loses", "MIL_perc", "MIL_gb",
                                                    "CIN_wins", "CIN_loses", "CIN_perc", "CIN_gb",
                                                    "STL_wins", "STL_loses", "STL_perc", "STL_gb",
                                                    "PIT_wins", "PIT_loses", "PIT_perc", "PIT_gb"))))
NL_West <- data.frame(matrix(ncol=20,nrow=0, 
                             dimnames=list(NULL, c("LAD_wins", "LAD_loses", "LAD_perc", "LAD_gb",
                                                   "COL_wins", "COL_loses", "COL_perc", "COL_gb",
                                                   "ARI_wins", "ARI_loses", "ARI_perc", "ARI_gb",
                                                   "SD_wins", "SD_loses", "SD_perc", "SD_gb",
                                                   "SF_wins", "SF_loses", "SF_perc", "SF_gb"))))


#july data

for (i in 23:31) {
  file_name = paste("AL_East.07", as.character(i),"20.csv", sep = "")
  temp = read.csv(file_name)
  temp = temp[order(temp$"Team", decreasing = F),]
  temp_row = c(temp[3,3], temp[3,4], temp[3,5], temp[3,6],
               temp[4,3], temp[4,4], temp[4,5], temp[4,6],
               temp[2,3], temp[2,4], temp[2,5], temp[2,6],
               temp[1,3], temp[1,4], temp[1,5], temp[1,6],
               temp[5,3], temp[5,4], temp[5,5], temp[5,6])
  AL_East <- rbind(AL_East, temp_row, make.row.names=FALSE)
  colnames(AL_East) <- c("NYY_wins", "NYY_loses", "NYY_perc", "NYY_gb",
                        "TB_wins", "TB_loses", "TB_perc", "TB_gb",
                        "BOS_wins", "BOS_loses", "BOS_perc", "BOS_gb",
                        "BAL_wins", "BAL_loses", "BAL_perc", "BAL_gb",
                        "TOR_wins", "TOR_loses", "TOR_perc", "TOR_gb")
}

for (i in 23:31) {
  file_name = paste("AL_Central.07", as.character(i),"20.csv", sep = "")
  temp = read.csv(file_name)
  temp = temp[order(temp$"Team", decreasing = F),]
  temp_row = c(temp[5,3], temp[5,4], temp[5,5], temp[5,6],
               temp[2,3], temp[2,4], temp[2,5], temp[2,6],
               temp[1,3], temp[1,4], temp[1,5], temp[1,6],
               temp[4,3], temp[4,4], temp[4,5], temp[4,6],
               temp[3,3], temp[3,4], temp[3,5], temp[3,6])
  AL_Central <- rbind(AL_Central, temp_row, make.row.names=FALSE)
  colnames(AL_Central) <- c("MIN_wins", "MIN_loses", "MIN_perc", "MIN_gb",
                         "CLE_wins", "CLE_loses", "CLE_perc", "CLE_gb",
                         "CHW_wins", "CHW_loses", "CHW_perc", "CHW_gb",
                         "KC_wins", "KC_loses", "KC_perc", "KC_gb",
                         "DET_wins", "DET_loses", "DET_perc", "DET_gb")
}

for (i in 23:31) {
  file_name = paste("AL_West.07", as.character(i),"20.csv", sep = "")
  temp = read.csv(file_name)
  temp = temp[order(temp$"Team", decreasing = F),]
  temp_row = c(temp[1,3], temp[1,4], temp[1,5], temp[1,6],
               temp[5,3], temp[5,4], temp[5,5], temp[5,6],
               temp[3,3], temp[3,4], temp[3,5], temp[3,6],
               temp[2,3], temp[2,4], temp[2,5], temp[2,6],
               temp[4,3], temp[4,4], temp[4,5], temp[4,6])
  AL_West <- rbind(AL_West, temp_row, make.row.names=FALSE)
  colnames(AL_West) <- c("HOU_wins", "HOU_loses", "HOU_perc", "HOU_gb",
                         "TEX_wins", "TEX_loses", "TEX_perc", "TEX_gb",
                         "OAK_wins", "OAK_loses", "OAK_perc", "OAK_gb",
                         "LAA_wins", "LAA_loses", "LAA_perc", "LAA_gb",
                         "SEA_wins", "SEA_loses", "SEA_perc", "SEA_gb")
}

for (i in 23:31) {
  file_name = paste("NL_East.07", as.character(i),"20.csv", sep = "")
  temp = read.csv(file_name)
  temp = temp[order(temp$"Team", decreasing = F),]
  temp_row = c(temp[3,3], temp[3,4], temp[3,5], temp[3,6],
               temp[5,3], temp[5,4], temp[5,5], temp[5,6],
               temp[4,3], temp[4,4], temp[4,5], temp[4,6],
               temp[1,3], temp[1,4], temp[1,5], temp[1,6],
               temp[2,3], temp[2,4], temp[2,5], temp[2,6])
  NL_East <- rbind(NL_East, temp_row, make.row.names=FALSE)
  colnames(NL_East) <- c("NYM_wins", "NYM_loses", "NYM_perc", "NYM_gb",
                         "WSN_wins", "WSN_loses", "WSN_perc", "WSN_gb",
                         "PHI_wins", "PHI_loses", "PHI_perc", "PHI_gb",
                         "ATL_wins", "ATL_loses", "ATL_perc", "ATL_gb",
                         "MIA_wins", "MIA_loses", "MIA_perc", "MIA_gb")
}

for (i in 23:31) {
  file_name = paste("NL_Central.07", as.character(i),"20.csv", sep = "")
  temp = read.csv(file_name)
  temp = temp[order(temp$"Team", decreasing = F),]
  temp_row = c(temp[1,3], temp[1,4], temp[1,5], temp[1,6],
               temp[3,3], temp[3,4], temp[3,5], temp[3,6],
               temp[2,3], temp[2,4], temp[2,5], temp[2,6],
               temp[5,3], temp[5,4], temp[5,5], temp[5,6],
               temp[4,3], temp[4,4], temp[4,5], temp[4,6])
  NL_Central <- rbind(NL_Central, temp_row, make.row.names=FALSE)
  colnames(NL_Central) <- c("CHC_wins", "CHC_loses", "CHC_perc", "CHC_gb",
                         "MIL_wins", "MIL_loses", "MIL_perc", "MIL_gb",
                         "CIN_wins", "CIN_loses", "CIN_perc", "CIN_gb",
                         "STL_wins", "STL_loses", "STL_perc", "STL_gb",
                         "PIT_wins", "PIT_loses", "PIT_perc", "PIT_gb")
}

for (i in 23:31) {
  file_name = paste("NL_West.07", as.character(i),"20.csv", sep = "")
  temp = read.csv(file_name)
  temp = temp[order(temp$"Team", decreasing = F),]
  temp_row = c(temp[3,3], temp[3,4], temp[3,5], temp[3,6],
               temp[2,3], temp[2,4], temp[2,5], temp[2,6],
               temp[1,3], temp[1,4], temp[1,5], temp[1,6],
               temp[4,3], temp[4,4], temp[4,5], temp[4,6],
               temp[5,3], temp[5,4], temp[5,5], temp[5,6])
  NL_West <- rbind(NL_West, temp_row, make.row.names=FALSE)
  colnames(NL_West) <- c("LAD_wins", "LAD_loses", "LAD_perc", "LAD_gb",
                         "COL_wins", "COL_loses", "COL_perc", "COL_gb",
                         "ARI_wins", "ARI_loses", "ARI_perc", "ARI_gb",
                         "SD_wins", "SD_loses", "SD_perc", "SD_gb",
                         "SF_wins", "SF_loses", "SF_perc", "SF_gb")
}

#august data

for (i in 1:9) {
  file_name = paste("AL_East.080", as.character(i),"20.csv", sep = "")
  temp = read.csv(file_name)
  temp = temp[order(temp$"Team", decreasing = F),]
  temp_row = c(temp[3,3], temp[3,4], temp[3,5], temp[3,6],
               temp[4,3], temp[4,4], temp[4,5], temp[4,6],
               temp[2,3], temp[2,4], temp[2,5], temp[2,6],
               temp[1,3], temp[1,4], temp[1,5], temp[1,6],
               temp[5,3], temp[5,4], temp[5,5], temp[5,6])
  AL_East <- rbind(AL_East, temp_row, make.row.names=FALSE)
}

for (i in 10:31) {
  file_name = paste("AL_East.08", as.character(i),"20.csv", sep = "")
  temp = read.csv(file_name)
  temp = temp[order(temp$"Team", decreasing = F),]
  temp_row = c(temp[3,3], temp[3,4], temp[3,5], temp[3,6],
               temp[4,3], temp[4,4], temp[4,5], temp[4,6],
               temp[2,3], temp[2,4], temp[2,5], temp[2,6],
               temp[1,3], temp[1,4], temp[1,5], temp[1,6],
               temp[5,3], temp[5,4], temp[5,5], temp[5,6])
  AL_East <- rbind(AL_East, temp_row, make.row.names=FALSE)
}

for (i in 1:9) {
  file_name = paste("AL_Central.080", as.character(i),"20.csv", sep = "")
  temp = read.csv(file_name)
  temp = temp[order(temp$"Team", decreasing = F),]
  temp_row = c(temp[5,3], temp[5,4], temp[5,5], temp[5,6],
               temp[2,3], temp[2,4], temp[2,5], temp[2,6],
               temp[1,3], temp[1,4], temp[1,5], temp[1,6],
               temp[4,3], temp[4,4], temp[4,5], temp[4,6],
               temp[3,3], temp[3,4], temp[3,5], temp[3,6])
  AL_Central <- rbind(AL_Central, temp_row, make.row.names=FALSE)
}

for (i in 10:31) {
  file_name = paste("AL_Central.08", as.character(i),"20.csv", sep = "")
  temp = read.csv(file_name)
  temp = temp[order(temp$"Team", decreasing = F),]
  temp_row = c(temp[5,3], temp[5,4], temp[5,5], temp[5,6],
               temp[2,3], temp[2,4], temp[2,5], temp[2,6],
               temp[1,3], temp[1,4], temp[1,5], temp[1,6],
               temp[4,3], temp[4,4], temp[4,5], temp[4,6],
               temp[3,3], temp[3,4], temp[3,5], temp[3,6])
  AL_Central <- rbind(AL_Central, temp_row, make.row.names=FALSE)
}

for (i in 1:9) {
  file_name = paste("AL_West.080", as.character(i),"20.csv", sep = "")
  temp = read.csv(file_name)
  temp = temp[order(temp$"Team", decreasing = F),]
  temp_row = c(temp[1,3], temp[1,4], temp[1,5], temp[1,6],
               temp[5,3], temp[5,4], temp[5,5], temp[5,6],
               temp[3,3], temp[3,4], temp[3,5], temp[3,6],
               temp[2,3], temp[2,4], temp[2,5], temp[2,6],
               temp[4,3], temp[4,4], temp[4,5], temp[4,6])
  AL_West <- rbind(AL_West, temp_row, make.row.names=FALSE)
}

for (i in 10:31) {
  file_name = paste("AL_West.08", as.character(i),"20.csv", sep = "")
  temp = read.csv(file_name)
  temp = temp[order(temp$"Team", decreasing = F),]
  temp_row = c(temp[1,3], temp[1,4], temp[1,5], temp[1,6],
               temp[5,3], temp[5,4], temp[5,5], temp[5,6],
               temp[3,3], temp[3,4], temp[3,5], temp[3,6],
               temp[2,3], temp[2,4], temp[2,5], temp[2,6],
               temp[4,3], temp[4,4], temp[4,5], temp[4,6])
  AL_West <- rbind(AL_West, temp_row, make.row.names=FALSE)
}

for (i in 1:9) {
  file_name = paste("NL_East.080", as.character(i),"20.csv", sep = "")
  temp = read.csv(file_name)
  temp = temp[order(temp$"Team", decreasing = F),]
  temp_row = c(temp[3,3], temp[3,4], temp[3,5], temp[3,6],
               temp[5,3], temp[5,4], temp[5,5], temp[5,6],
               temp[4,3], temp[4,4], temp[4,5], temp[4,6],
               temp[1,3], temp[1,4], temp[1,5], temp[1,6],
               temp[2,3], temp[2,4], temp[2,5], temp[2,6])
  NL_East <- rbind(NL_East, temp_row, make.row.names=FALSE)
}

for (i in 10:31) {
  file_name = paste("NL_East.08", as.character(i),"20.csv", sep = "")
  temp = read.csv(file_name)
  temp = temp[order(temp$"Team", decreasing = F),]
  temp_row = c(temp[3,3], temp[3,4], temp[3,5], temp[3,6],
               temp[5,3], temp[5,4], temp[5,5], temp[5,6],
               temp[4,3], temp[4,4], temp[4,5], temp[4,6],
               temp[1,3], temp[1,4], temp[1,5], temp[1,6],
               temp[2,3], temp[2,4], temp[2,5], temp[2,6])
  NL_East <- rbind(NL_East, temp_row, make.row.names=FALSE)
}

for (i in 1:9) {
  file_name = paste("NL_Central.080", as.character(i),"20.csv", sep = "")
  temp = read.csv(file_name)
  temp = temp[order(temp$"Team", decreasing = F),]
  temp_row = c(temp[1,3], temp[1,4], temp[1,5], temp[1,6],
               temp[3,3], temp[3,4], temp[3,5], temp[3,6],
               temp[2,3], temp[2,4], temp[2,5], temp[2,6],
               temp[5,3], temp[5,4], temp[5,5], temp[5,6],
               temp[4,3], temp[4,4], temp[4,5], temp[4,6])
  NL_Central <- rbind(NL_Central, temp_row, make.row.names=FALSE)
}

for (i in 10:31) {
  file_name = paste("NL_Central.08", as.character(i),"20.csv", sep = "")
  temp = read.csv(file_name)
  temp = temp[order(temp$"Team", decreasing = F),]
  temp_row = c(temp[1,3], temp[1,4], temp[1,5], temp[1,6],
               temp[3,3], temp[3,4], temp[3,5], temp[3,6],
               temp[2,3], temp[2,4], temp[2,5], temp[2,6],
               temp[5,3], temp[5,4], temp[5,5], temp[5,6],
               temp[4,3], temp[4,4], temp[4,5], temp[4,6])
  NL_Central <- rbind(NL_Central, temp_row, make.row.names=FALSE)
}

for (i in 1:9) {
  file_name = paste("NL_West.080", as.character(i),"20.csv", sep = "")
  temp = read.csv(file_name)
  temp = temp[order(temp$"Team", decreasing = F),]
  temp_row = c(temp[3,3], temp[3,4], temp[3,5], temp[3,6],
               temp[2,3], temp[2,4], temp[2,5], temp[2,6],
               temp[1,3], temp[1,4], temp[1,5], temp[1,6],
               temp[4,3], temp[4,4], temp[4,5], temp[4,6],
               temp[5,3], temp[5,4], temp[5,5], temp[5,6])
  NL_West <- rbind(NL_West, temp_row, make.row.names=FALSE)
}

for (i in 10:31) {
  file_name = paste("NL_West.08", as.character(i),"20.csv", sep = "")
  temp = read.csv(file_name)
  temp = temp[order(temp$"Team", decreasing = F),]
  temp_row = c(temp[3,3], temp[3,4], temp[3,5], temp[3,6],
               temp[2,3], temp[2,4], temp[2,5], temp[2,6],
               temp[1,3], temp[1,4], temp[1,5], temp[1,6],
               temp[4,3], temp[4,4], temp[4,5], temp[4,6],
               temp[5,3], temp[5,4], temp[5,5], temp[5,6])
  NL_West <- rbind(NL_West, temp_row, make.row.names=FALSE)
}


#september data

for (i in 1:9) {
  file_name = paste("AL_East.090", as.character(i),"20.csv", sep = "")
  temp = read.csv(file_name)
  temp = temp[order(temp$"Team", decreasing = F),]
  temp_row = c(temp[3,3], temp[3,4], temp[3,5], temp[3,6],
               temp[4,3], temp[4,4], temp[4,5], temp[4,6],
               temp[2,3], temp[2,4], temp[2,5], temp[2,6],
               temp[1,3], temp[1,4], temp[1,5], temp[1,6],
               temp[5,3], temp[5,4], temp[5,5], temp[5,6])
  AL_East <- rbind(AL_East, temp_row, make.row.names=FALSE)
}

for (i in 10:27) {
  file_name = paste("AL_East.09", as.character(i),"20.csv", sep = "")
  temp = read.csv(file_name)
  temp = temp[order(temp$"Team", decreasing = F),]
  temp_row = c(temp[3,3], temp[3,4], temp[3,5], temp[3,6],
               temp[4,3], temp[4,4], temp[4,5], temp[4,6],
               temp[2,3], temp[2,4], temp[2,5], temp[2,6],
               temp[1,3], temp[1,4], temp[1,5], temp[1,6],
               temp[5,3], temp[5,4], temp[5,5], temp[5,6])
  AL_East <- rbind(AL_East, temp_row, make.row.names=FALSE)
}

for (i in 1:9) {
  file_name = paste("AL_Central.090", as.character(i),"20.csv", sep = "")
  temp = read.csv(file_name)
  temp = temp[order(temp$"Team", decreasing = F),]
  temp_row = c(temp[5,3], temp[5,4], temp[5,5], temp[5,6],
               temp[2,3], temp[2,4], temp[2,5], temp[2,6],
               temp[1,3], temp[1,4], temp[1,5], temp[1,6],
               temp[4,3], temp[4,4], temp[4,5], temp[4,6],
               temp[3,3], temp[3,4], temp[3,5], temp[3,6])
  AL_Central <- rbind(AL_Central, temp_row, make.row.names=FALSE)
}

for (i in 10:27) {
  file_name = paste("AL_Central.09", as.character(i),"20.csv", sep = "")
  temp = read.csv(file_name)
  temp = temp[order(temp$"Team", decreasing = F),]
  temp_row = c(temp[5,3], temp[5,4], temp[5,5], temp[5,6],
               temp[2,3], temp[2,4], temp[2,5], temp[2,6],
               temp[1,3], temp[1,4], temp[1,5], temp[1,6],
               temp[4,3], temp[4,4], temp[4,5], temp[4,6],
               temp[3,3], temp[3,4], temp[3,5], temp[3,6])
  AL_Central <- rbind(AL_Central, temp_row, make.row.names=FALSE)
}

for (i in 1:9) {
  file_name = paste("AL_West.090", as.character(i),"20.csv", sep = "")
  temp = read.csv(file_name)
  temp = temp[order(temp$"Team", decreasing = F),]
  temp_row = c(temp[1,3], temp[1,4], temp[1,5], temp[1,6],
               temp[5,3], temp[5,4], temp[5,5], temp[5,6],
               temp[3,3], temp[3,4], temp[3,5], temp[3,6],
               temp[2,3], temp[2,4], temp[2,5], temp[2,6],
               temp[4,3], temp[4,4], temp[4,5], temp[4,6])
  AL_West <- rbind(AL_West, temp_row, make.row.names=FALSE)
}

for (i in 10:27) {
  file_name = paste("AL_West.09", as.character(i),"20.csv", sep = "")
  temp = read.csv(file_name)
  temp = temp[order(temp$"Team", decreasing = F),]
  temp_row = c(temp[1,3], temp[1,4], temp[1,5], temp[1,6],
               temp[5,3], temp[5,4], temp[5,5], temp[5,6],
               temp[3,3], temp[3,4], temp[3,5], temp[3,6],
               temp[2,3], temp[2,4], temp[2,5], temp[2,6],
               temp[4,3], temp[4,4], temp[4,5], temp[4,6])
  AL_West <- rbind(AL_West, temp_row, make.row.names=FALSE)
}

for (i in 1:9) {
  file_name = paste("NL_East.090", as.character(i),"20.csv", sep = "")
  temp = read.csv(file_name)
  temp = temp[order(temp$"Team", decreasing = F),]
  temp_row = c(temp[3,3], temp[3,4], temp[3,5], temp[3,6],
               temp[5,3], temp[5,4], temp[5,5], temp[5,6],
               temp[4,3], temp[4,4], temp[4,5], temp[4,6],
               temp[1,3], temp[1,4], temp[1,5], temp[1,6],
               temp[2,3], temp[2,4], temp[2,5], temp[2,6])
  NL_East <- rbind(NL_East, temp_row, make.row.names=FALSE)
}

for (i in 10:27) {
  file_name = paste("NL_East.09", as.character(i),"20.csv", sep = "")
  temp = read.csv(file_name)
  temp = temp[order(temp$"Team", decreasing = F),]
  temp_row = c(temp[3,3], temp[3,4], temp[3,5], temp[3,6],
               temp[5,3], temp[5,4], temp[5,5], temp[5,6],
               temp[4,3], temp[4,4], temp[4,5], temp[4,6],
               temp[1,3], temp[1,4], temp[1,5], temp[1,6],
               temp[2,3], temp[2,4], temp[2,5], temp[2,6])
  NL_East <- rbind(NL_East, temp_row, make.row.names=FALSE)
}

for (i in 1:9) {
  file_name = paste("NL_Central.090", as.character(i),"20.csv", sep = "")
  temp = read.csv(file_name)
  temp = temp[order(temp$"Team", decreasing = F),]
  temp_row = c(temp[1,3], temp[1,4], temp[1,5], temp[1,6],
               temp[3,3], temp[3,4], temp[3,5], temp[3,6],
               temp[2,3], temp[2,4], temp[2,5], temp[2,6],
               temp[5,3], temp[5,4], temp[5,5], temp[5,6],
               temp[4,3], temp[4,4], temp[4,5], temp[4,6])
  NL_Central <- rbind(NL_Central, temp_row, make.row.names=FALSE)
}

for (i in 10:27) {
  file_name = paste("NL_Central.09", as.character(i),"20.csv", sep = "")
  temp = read.csv(file_name)
  temp = temp[order(temp$"Team", decreasing = F),]
  temp_row = c(temp[1,3], temp[1,4], temp[1,5], temp[1,6],
               temp[3,3], temp[3,4], temp[3,5], temp[3,6],
               temp[2,3], temp[2,4], temp[2,5], temp[2,6],
               temp[5,3], temp[5,4], temp[5,5], temp[5,6],
               temp[4,3], temp[4,4], temp[4,5], temp[4,6])
  NL_Central <- rbind(NL_Central, temp_row, make.row.names=FALSE)
}

for (i in 1:9) {
  file_name = paste("NL_West.090", as.character(i),"20.csv", sep = "")
  temp = read.csv(file_name)
  temp = temp[order(temp$"Team", decreasing = F),]
  temp_row = c(temp[3,3], temp[3,4], temp[3,5], temp[3,6],
               temp[2,3], temp[2,4], temp[2,5], temp[2,6],
               temp[1,3], temp[1,4], temp[1,5], temp[1,6],
               temp[4,3], temp[4,4], temp[4,5], temp[4,6],
               temp[5,3], temp[5,4], temp[5,5], temp[5,6])
  NL_West <- rbind(NL_West, temp_row, make.row.names=FALSE)
}

for (i in 10:27) {
  file_name = paste("NL_West.09", as.character(i),"20.csv", sep = "")
  temp = read.csv(file_name)
  temp = temp[order(temp$"Team", decreasing = F),]
  temp_row = c(temp[3,3], temp[3,4], temp[3,5], temp[3,6],
               temp[2,3], temp[2,4], temp[2,5], temp[2,6],
               temp[1,3], temp[1,4], temp[1,5], temp[1,6],
               temp[4,3], temp[4,4], temp[4,5], temp[4,6],
               temp[5,3], temp[5,4], temp[5,5], temp[5,6])
  NL_West <- rbind(NL_West, temp_row, make.row.names=FALSE)
}



###################

#export standings

write.csv(AL_East, "AL_East.csv", row.names = F)
write.csv(AL_Central, "AL_Central.csv", row.names = F)
write.csv(AL_West, "AL_West.csv", row.names = F)
write.csv(NL_East, "NL_East.csv", row.names = F)
write.csv(NL_Central, "NL_Central.csv", row.names = F)
write.csv(NL_West, "NL_West.csv", row.names = F)





