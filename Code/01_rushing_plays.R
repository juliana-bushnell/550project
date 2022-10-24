##Making Rushing Plays Table


here::i_am("code/01_rushing_plays.R")

teamszn <- table(train$PossessionTeam, train$Season)
library(knitr)
library(webshot)
teamszn %>%
  kbl() %>%
  kable_paper("hover", full_width = F)

