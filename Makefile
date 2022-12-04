final_report.html: Code/08_render_report.R Final_Report.Rmd Figures/output1.rds Figures/height_weight.png
	Rscript Code/08_render_report.R

Figures/output1.rds: Code/01_rushing_plays.R Data/train.csv
	Rscript Code/01_rushing_plays.R

Figures/height_weight.png: Code/02_plot_height_weight.R Data/train.csv
	Rscript Code/02_plot_height_weight.R

.PHONY: install
install: 
	Rscript -e "install.packages('ggplot2')"
	Rscript -e "install.packages('rmarkdown')"
	Rscript -e "install.packages('here')"
	Rscript -e "install.packages('knitr')"
	Rscript -e "install.packages('readr')"
	Rscript -e "install.packages('dplyr')"
	Rscript -e "install.packages('webshot')"

.PHONY: clean
clean:
	rm -f Figures/*.png && rm -f Figures/*.html && rm -f Figures/*.rds && rm -f *.html && rm -f Report/*.html


docker_image: dockerfile Code/01_rushing_plays.R Code/02_plot_height_weight.R Code/08_render_report.R Final_Report.Rmd Makefile
	docker build -t fin .
	touch $@

pull image:
	docker pull julianabushnell/fin

docker_mac:
	docker run -v "/$$(pwd)"/Report:/project/Report julianabushnell/fin

docker_pc:
	docker run -v "//$$(pwd)"/Report:/project/Report julianabushnell/fin