#File to Render final report 


here::i_am("code/08_render_report.R")

library(rmarkdown)
# rendering a report in production mode
render("final_report.Rmd")