#File to Render final report 


here::i_am("Code/08_render_report.R")

library(rmarkdown)
# rendering a report in production mode
render("Final_Report.Rmd")

