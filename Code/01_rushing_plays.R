##Making Rushing Plays Table

library(knitr)
library(readr)
library(kableExtra)
library(ggplot2)
library(dplyr, warn.conflicts = FALSE)
here::i_am("code/01_rushing_plays.R")
train <- read_csv(file = here::here("data/train.csv"))

teamszn <- table(train$PossessionTeam, train$Season)
library(knitr)
library(webshot)
teamszn %>%
  kbl() %>%
  kable_paper("hover", full_width = F) %>%
save_kable("Figures/output1.png")
