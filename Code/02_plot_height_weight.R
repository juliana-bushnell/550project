## Figure 1 Code: This graph illustrates in general the 
##height and weight of players between the 2017-2019 season. 
library(here)
library(readr)
library(kableExtra)
library(ggplot2)
library(dplyr, warn.conflicts = FALSE)
library(webshot)
train <- read_csv(file = here::here("Data/train.csv"))
here::i_am("Code/02_plot_height_weight.R")
tbl1plot <- 
  ggplot(train, aes(x = Position, y = PlayerWeight)) + geom_point(color='blue') + theme(aspect.ratio=1/10)

print(tbl1plot + ggtitle(label = "Position (x) by Player Weight (y)",))

ggsave(
  here::here("Figures/height_weight.png"),
  plot = tbl1plot,
  device = "png"
)