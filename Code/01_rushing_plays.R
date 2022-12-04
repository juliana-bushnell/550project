##Making Rushing Plays Table

library(here)
library(readr)
library(kableExtra) 
library(ggplot2)
library(dplyr, warn.conflicts = FALSE)
here::i_am("Code/01_rushing_plays.R")
train <- read_csv(file = here::here("Data/train.csv"))

teamszn <- table(train$PossessionTeam, train$Season)


output1<- kableExtra::kable(teamszn, format="html")
saveRDS(output1, file=here::here("Figures/output1.rds"))
