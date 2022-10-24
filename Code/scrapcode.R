tbl1plot <- 
  ggplot(train, aes(x = PlayerHeight, y = PlayerWeight)) + geom_point(color='blue') +
  geom_smooth(method='lm')


distanceteam <- table(train$PossessionTeam, train$Distance)

## divisional 
nfc_east <- c("DAL", "NYG", "PHI", "WAS")
nfc_west <- c("ARZ", "SEA", "LA", "SF")
nfc_north <- c("CHI", "DET", "GB", "MIN")
nfc_south <- c("ATL", "CAR", "NO", "TB")

afc_east<- c("BUF", "MIA", "NE", "NYJ")
afc_west<- c("DEN", "KC", "OAK", "LAC")
afc_north<- c("BAL", "CIN", "CLV", "PIT")
afc_south<- c("HST","IND","JAX","TEN" )
