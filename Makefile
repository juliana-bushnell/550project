#! TO DO:
#!build the report
report.html: code/08_render_report.R
	Rscript code/08_render_report.R
#! TO DO:
#! add a rule to create the output of 
#! code/01_rushing_plays.R
Figures/rushing_plays.png: code/01_rushing_plays.R
	Rscript code/01_rushing_plays.R

#! TO DO:
#! add a rule to create the output of 
#! code/02_plot_height_weight.R
Figures/height_weight.png: code/02_plot_height_weight.R
	Rscript code/02_plot_height_weight.R
#! TO DO:
#! add a rule to create the output of 
#! code/03_make_output3.R
output3/plot_2: code/03_make_output3.R
	Rscript code/03_make_output3.R

#! Removes itemsfrom the figures directories

.PHONY: clean
clean: clean
	rm -f figures/*.png && rm -f figures/*.html && rm -f figures/*.pdf

