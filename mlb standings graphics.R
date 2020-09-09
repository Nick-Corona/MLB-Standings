library(ggplot2)
library(gifski)
library(gganimate)
library(ggimage)

#setwd("") this is where i set the working directory

#AL East

old <- read.csv("AL_East.csv")
old$day = row.names(old)
day <- rep(1:nrow(old), 5)
wins <- c(old$NYY_wins, old$TB_wins, old$BOS_wins, old$BAL_wins, old$TOR_wins)
loses <- c(old$NYY_loses, old$TB_loses, old$BOS_loses, old$BAL_loses, old$TOR_loses)
perc <- c(old$NYY_perc, old$TB_perc, old$BOS_perc, old$BAL_perc, old$TOR_perc)
gb <- c(old$NYY_gb, old$TB_gb, old$BOS_gb, old$BAL_gb, old$TOR_gb)
team <- c(rep("NYY", nrow(old)), rep("TB", nrow(old)), rep("BOS", nrow(old)), rep("BAL", nrow(old)), rep("TOR", nrow(old)))
logo <- c(rep("https://upload.wikimedia.org/wikipedia/en/thumb/2/25/NewYorkYankees_PrimaryLogo.svg/800px-NewYorkYankees_PrimaryLogo.svg.png", nrow(old)), 
          rep("https://upload.wikimedia.org/wikipedia/en/thumb/c/c6/Tampa_Bay_Rays.svg/1920px-Tampa_Bay_Rays.svg.png", nrow(old)), 
          rep("https://upload.wikimedia.org/wikipedia/en/thumb/6/6d/RedSoxPrimary_HangingSocks.svg/1024px-RedSoxPrimary_HangingSocks.svg.png", nrow(old)), 
          rep("https://upload.wikimedia.org/wikipedia/en/thumb/7/75/Baltimore_Orioles_cap.svg/1024px-Baltimore_Orioles_cap.svg.png", nrow(old)), 
          rep("https://cdn.freebiesupply.com/images/large/2x/toronto-blue-jays-logo-transparent.png", nrow(old)))
colors <- c(rep("midnightblue", nrow(old)), rep("yellow1", nrow(old)), rep("red1", nrow(old)), rep("darkorange1", nrow(old)), rep("steelblue4", nrow(old)))

AL_East <- data.frame("day"=day, "wins"=wins, "loses"=loses, "perc"=perc, "gb"=gb, "team"=team, "logo"=logo, "colors"=colors)

AL_East_plot <- ggplot(data = AL_East, aes(x=day, y=perc, group = team))+
  geom_path(lwd=1, colour = colors)+
  geom_image(aes(image=logo))+
  geom_hline(yintercept=.5, linetype="dashed", color = "black")+
  ggtitle("AL East Standings")+
  xlab("Day")+
  ylab("Win %")+
  transition_reveal(as.numeric(AL_East$day))
AL_East_animate <- animate(AL_East_plot, end_pause = 30, nframes = 225, fps = 15, height = 3, width = 3, units = "in", res = 500)
AL_East_animate
anim_save(filename = "AL_East_Plot.gif", animation = AL_East_animate)

##########
#AL Central

old <- read.csv("AL_Central.csv")
old$day = row.names(old)
day <- rep(1:nrow(old), 5)
wins <- c(old$MIN_wins, old$CLE_wins, old$CHW_wins, old$KC_wins, old$DET_wins)
loses <- c(old$MIN_loses, old$CLE_loses, old$CHW_loses, old$KC_loses, old$DET_loses)
perc <- c(old$MIN_perc, old$CLE_perc, old$CHW_perc, old$KC_perc, old$DET_perc)
gb <- c(old$MIN_gb, old$CLE_gb, old$CHW_gb, old$KC_gb, old$DET_gb)
team <- c(rep("MIN", nrow(old)), rep("CLE", nrow(old)), rep("CHW", nrow(old)), rep("KC", nrow(old)), rep("DET", nrow(old)))
logo <- c(rep("https://upload.wikimedia.org/wikipedia/en/thumb/b/b4/Minnesota_Twins_logo_%28low_res%29.svg/800px-Minnesota_Twins_logo_%28low_res%29.svg.png", nrow(old)), 
          rep("https://upload.wikimedia.org/wikipedia/commons/thumb/e/ee/Cleveland_Indians_primary_logo.svg/800px-Cleveland_Indians_primary_logo.svg.png", nrow(old)), 
          rep("https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Chicago_White_Sox.svg/800px-Chicago_White_Sox.svg.png", nrow(old)), 
          rep("https://upload.wikimedia.org/wikipedia/en/thumb/1/1c/Kansas_City_Royals.svg/800px-Kansas_City_Royals.svg.png", nrow(old)), 
          rep("https://upload.wikimedia.org/wikipedia/commons/thumb/e/e3/Detroit_Tigers_logo.svg/800px-Detroit_Tigers_logo.svg.png", nrow(old)))
colors <- c(rep("midnightblue", nrow(old)), rep("red3", nrow(old)), rep("black", nrow(old)), rep("blue3", nrow(old)), rep("darkorange1", nrow(old)))

AL_Central <- data.frame("day"=day, "wins"=wins, "loses"=loses, "perc"=perc, "gb"=gb, "team"=team, "logo"=logo, "colors"=colors)

AL_Central_plot <- ggplot(data = AL_Central, aes(x=day, y=perc, group = team))+
  geom_path(lwd=1, colour = colors)+
  geom_image(aes(image=logo))+
  geom_hline(yintercept=.5, linetype="dashed", color = "black")+
  ggtitle("AL Central Standings")+
  xlab("Day")+
  ylab("Win %")+
  transition_reveal(as.numeric(AL_Central$day))
AL_Central_animate <- animate(AL_Central_plot, end_pause = 30, nframes = 225, fps = 15, height = 3, width = 3, units = "in", res = 500)
AL_Central_animate
anim_save(filename="AL_Central_Plot.gif", animation = AL_Central_animate)

###################################
#AL West

old <- read.csv("AL_West.csv")
old$day = row.names(old)
day <- rep(1:nrow(old), 5)
wins <- c(old$HOU_wins, old$TEX_wins, old$OAK_wins, old$LAA_wins, old$SEA_wins)
loses <- c(old$HOU_loses, old$TEX_loses, old$OAK_loses, old$LAA_loses, old$SEA_loses)
perc <- c(old$HOU_perc, old$TEX_perc, old$OAK_perc, old$LAA_perc, old$SEA_perc)
gb <- c(old$HOU_gb, old$TEX_gb, old$OAK_gb, old$LAA_gb, old$SEA_gb)
team <- c(rep("HOU", nrow(old)), rep("TEX", nrow(old)), rep("OAK", nrow(old)), rep("LAA", nrow(old)), rep("SEA", nrow(old)))
logo <- c(rep("https://upload.wikimedia.org/wikipedia/commons/thumb/6/6b/Houston-Astros-Logo.svg/800px-Houston-Astros-Logo.svg.png", nrow(old)), 
          rep("https://upload.wikimedia.org/wikipedia/en/thumb/4/41/Texas_Rangers.svg/800px-Texas_Rangers.svg.png", nrow(old)), 
          rep("https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Oakland_A%27s_logo.svg/800px-Oakland_A%27s_logo.svg.png", nrow(old)), 
          rep("https://upload.wikimedia.org/wikipedia/commons/thumb/8/8b/Los_Angeles_Angels_of_Anaheim.svg/800px-Los_Angeles_Angels_of_Anaheim.svg.png", nrow(old)), 
          rep("https://upload.wikimedia.org/wikipedia/en/thumb/6/6d/Seattle_Mariners_logo_%28low_res%29.svg/800px-Seattle_Mariners_logo_%28low_res%29.svg.png", nrow(old)))
colors <- c(rep("midnightblue", nrow(old)), rep("blue2", nrow(old)), rep("springgreen4", nrow(old)), rep("red1", nrow(old)), rep("steelblue4", nrow(old)))

AL_West <- data.frame("day"=day, "wins"=wins, "loses"=loses, "perc"=perc, "gb"=gb, "team"=team, "logo"=logo, "colors"=colors)

AL_West_plot <- ggplot(data = AL_West, aes(x=day, y=perc, group = team))+
  geom_path(lwd=1, colour = colors)+
  geom_image(aes(image=logo))+
  geom_hline(yintercept=.5, linetype="dashed", color = "black")+
  ggtitle("AL West Standings")+
  xlab("Day")+
  ylab("Win %")+
  transition_reveal(as.numeric(AL_West$day))
AL_West_animate <- animate(AL_West_plot, end_pause = 30, nframes = 225, fps = 15, height = 3, width = 3, units = "in", res = 500)
AL_West_animate
anim_save(filename="AL_West_Plot.gif", animation = AL_West_animate)


#################################################################################################

old <- read.csv("NL_East.csv")
old$day = row.names(old)
day <- rep(1:nrow(old), 5)
wins <- c(old$NYM_wins, old$WSN_wins, old$PHI_wins, old$ATL_wins, old$MIA_wins)
loses <- c(old$NYM_loses, old$WSN_loses, old$PHI_loses, old$ATL_loses, old$MIA_loses)
perc <- c(old$NYM_perc, old$WSN_perc, old$PHI_perc, old$ATL_perc, old$MIA_perc)
gb <- c(old$NYM_gb, old$WSN_gb, old$PHI_gb, old$ATL_gb, old$MIA_gb)
team <- c(rep("NYM", nrow(old)), rep("WSN", nrow(old)), rep("PHI", nrow(old)), rep("ATL", nrow(old)), rep("MIA", nrow(old)))
logo <- c(rep("https://upload.wikimedia.org/wikipedia/en/thumb/7/7b/New_York_Mets.svg/800px-New_York_Mets.svg.png", nrow(old)), 
          rep("https://upload.wikimedia.org/wikipedia/en/thumb/6/6c/Washington_Nationals_logo_%28low_res%29.svg/800px-Washington_Nationals_logo_%28low_res%29.svg.png", nrow(old)), 
          rep("https://upload.wikimedia.org/wikipedia/en/thumb/f/f0/Philadelphia_Phillies_%282019%29_logo.svg/1024px-Philadelphia_Phillies_%282019%29_logo.svg.png", nrow(old)), 
          rep("https://upload.wikimedia.org/wikipedia/en/thumb/f/f2/Atlanta_Braves.svg/1920px-Atlanta_Braves.svg.png", nrow(old)), 
          rep("https://upload.wikimedia.org/wikipedia/en/thumb/f/fd/Marlins_team_logo.svg/1024px-Marlins_team_logo.svg.png", nrow(old)))
colors <- c(rep("blue2", nrow(old)), rep("red3", nrow(old)), rep("red", nrow(old)), rep("midnightblue", nrow(old)), rep("turquoise3", nrow(old)))

NL_East <- data.frame("day"=day, "wins"=wins, "loses"=loses, "perc"=perc, "gb"=gb, "team"=team, "logo"=logo, "colors"=colors)

NL_East_plot <- ggplot(data = NL_East, aes(x=day, y=perc, group = team))+
  geom_path(lwd=1, colour = colors)+
  geom_image(aes(image=logo))+
  geom_hline(yintercept=.5, linetype="dashed", color = "black")+
  ggtitle("NL East Standings")+
  xlab("Day")+
  ylab("Win %")+
  transition_reveal(as.numeric(NL_East$day))
NL_East_animate <- animate(NL_East_plot, end_pause = 30, nframes = 225, fps = 15, height = 3, width = 3, units = "in", res = 500)
NL_East_animate
anim_save(filename="NL_East_Plot.gif", animation = AL_East_animate)

##########
#NL Central

old <- read.csv("NL_Central.csv")
old$day = row.names(old)
day <- rep(1:nrow(old), 5)
wins <- c(old$CHC_wins, old$MIL_wins, old$CIN_wins, old$STL_wins, old$PIT_wins)
loses <- c(old$CHC_loses, old$MIL_loses, old$CIN_loses, old$STL_loses, old$PIT_loses)
perc <- c(old$CHC_perc, old$MIL_perc, old$CIN_perc, old$STL_perc, old$PIT_perc)
gb <- c(old$CHC_gb, old$MIL_gb, old$CIN_gb, old$STL_gb, old$PIT_gb)
team <- c(rep("CHC", nrow(old)), rep("MIL", nrow(old)), rep("CIN", nrow(old)), rep("STL", nrow(old)), rep("PIT", nrow(old)))
logo <- c(rep("https://upload.wikimedia.org/wikipedia/commons/thumb/8/80/Chicago_Cubs_logo.svg/800px-Chicago_Cubs_logo.svg.png", nrow(old)), 
          rep("https://upload.wikimedia.org/wikipedia/en/thumb/b/b8/Milwaukee_Brewers_logo.svg/800px-Milwaukee_Brewers_logo.svg.png", nrow(old)), 
          rep("https://upload.wikimedia.org/wikipedia/commons/thumb/0/01/Cincinnati_Reds_Logo.svg/1280px-Cincinnati_Reds_Logo.svg.png", nrow(old)), 
          rep("https://upload.wikimedia.org/wikipedia/en/thumb/9/9d/St._Louis_Cardinals_logo.svg/1024px-St._Louis_Cardinals_logo.svg.png", nrow(old)), 
          rep("https://upload.wikimedia.org/wikipedia/commons/thumb/8/81/Pittsburgh_Pirates_logo_2014.svg/800px-Pittsburgh_Pirates_logo_2014.svg.png", nrow(old)))
colors <- c(rep("blue2", nrow(old)), rep("yellow1", nrow(old)), rep("red2", nrow(old)), rep("red", nrow(old)), rep("black", nrow(old)))

NL_Central <- data.frame("day"=day, "wins"=wins, "loses"=loses, "perc"=perc, "gb"=gb, "team"=team, "logo"=logo, "colors"=colors)

NL_Central_plot <- ggplot(data = NL_Central, aes(x=day, y=perc, group = team))+
  geom_path(lwd=1, colour = colors)+
  geom_image(aes(image=logo))+
  geom_hline(yintercept=.5, linetype="dashed", color = "black")+
  ggtitle("NL Central Standings")+
  xlab("Day")+
  ylab("Win %")+
  transition_reveal(as.numeric(NL_Central$day))
NL_Central_animate <- animate(NL_Central_plot, end_pause = 30, nframes = 225, fps = 15, height = 3, width = 3, units = "in", res = 500)
NL_Central_animate
anim_save(filename="NL_Central_Plot.gif", animation = NL_Central_animate)

###################################
#NL West

old <- read.csv("NL_West.csv")
old$day = row.names(old)
day <- rep(1:nrow(old), 5)
wins <- c(old$LAD_wins, old$COL_wins, old$ARI_wins, old$SD_wins, old$SF_wins)
loses <- c(old$LAD_loses, old$COL_loses, old$ARI_loses, old$SD_loses, old$SF_loses)
perc <- c(old$LAD_perc, old$COL_perc, old$ARI_perc, old$SD_perc, old$SF_perc)
gb <- c(old$LAD_gb, old$COL_gb, old$ARI_gb, old$SD_gb, old$SF_gb)
team <- c(rep("LAD", nrow(old)), rep("COL", nrow(old)), rep("ARI", nrow(old)), rep("SD", nrow(old)), rep("SF", nrow(old)))
logo <- c(rep("https://upload.wikimedia.org/wikipedia/en/thumb/a/a0/Los_Angeles_Dodgers_logo_%28low_res%29.svg/800px-Los_Angeles_Dodgers_logo_%28low_res%29.svg.png", nrow(old)), 
          rep("https://upload.wikimedia.org/wikipedia/commons/thumb/3/31/Colorado_Rockies_logo.svg/800px-Colorado_Rockies_logo.svg.png", nrow(old)), 
          rep("https://upload.wikimedia.org/wikipedia/en/thumb/5/54/Arizona_Diamondbacks_logo_%28low_res%29.svg/1024px-Arizona_Diamondbacks_logo_%28low_res%29.svg.png", nrow(old)), 
          rep("https://upload.wikimedia.org/wikipedia/commons/thumb/e/e2/SD_Logo_Brown.svg/800px-SD_Logo_Brown.svg.png", nrow(old)), 
          rep("https://upload.wikimedia.org/wikipedia/en/thumb/5/58/San_Francisco_Giants_Logo.svg/1920px-San_Francisco_Giants_Logo.svg.png", nrow(old)))
colors <- c(rep("blue3", nrow(old)), rep("purple4", nrow(old)), rep("darkred", nrow(old)), rep("goldenrod4", nrow(old)), rep("darkorange1", nrow(old)))

NL_West <- data.frame("day"=day, "wins"=wins, "loses"=loses, "perc"=perc, "gb"=gb, "team"=team, "logo"=logo, "colors"=colors)

NL_West_plot <- ggplot(data = NL_West, aes(x=day, y=perc, group = team))+
  geom_path(lwd=1, colour = colors)+
  geom_image(aes(image=logo))+
  geom_hline(yintercept=.5, linetype="dashed", color = "black")+
  ggtitle("NL West Standings")+
  xlab("Day")+
  ylab("Win %")+
  transition_reveal(as.numeric(NL_West$day))
NL_West_animate <- animate(NL_West_plot, end_pause = 30, nframes = 225, fps = 15, height = 3, width = 3, units = "in", res = 500)
NL_West_animate
anim_save(filename="NL_West_Plot.gif", animation = NL_West_animate)

save.image(file = "MLB_standings_workspace.RData")

