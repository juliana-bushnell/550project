## Figure 1 Code: This graph illustrates in general the 
##height and weight of players between the 2017-2019 season. 

here::i_am("code/02_plot_height_weight.R")
library(ggplot2)
tbl1plot <- 
  ggplot(train, aes(x = PlayerHeight, y = PlayerWeight)) + geom_point(color='blue')

print(tbl1plot + ggtitle(label = "Player Height (x) by Player Weight (y)",))

ggsave(
  here::here("figures/height_weight.png"),
  plot = tbl1plot,
  device = "png"
)