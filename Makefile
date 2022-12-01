
#!build the report
final_report.html: code/08_render_report.R Final_Report.Rmd Figures/output1.png Figures/height_weight.png
	Rscript code/08_render_report.R
#! add a rule to create the output of 
#! code/01_rushing_plays.R
Figures/output1.png: code/01_rushing_plays.R data/train.csv
	Rscript code/01_rushing_plays.R

#! TO DO:
#! add a rule to create the output of 
#! code/02_plot_height_weight.R
Figures/height_weight.png: code/02_plot_height_weight.r data/train.csv
	Rscript code/02_plot_height_weight.r

#! Removes itemsfrom the figures directories
.PHONY: install
install: 
	Rscript -e "renv::restore(prompt = FALSE)"

.PHONY: clean
clean: clean
	rm -f figures/*.png && rm -f figures/*.html && rm -f figures/*.pdf && rm -f *.html


