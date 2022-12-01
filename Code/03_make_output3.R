here::i_am("code/03_make_output3.R")

positioncollege <- table(player$position, player$playercollegename)
library(knitr)
library(webshot)
positioncollege  %>%
  kbl() %>%
  kable_paper("hover", full_width = F) 

