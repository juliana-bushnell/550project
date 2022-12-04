FROM rocker/r-ubuntu
RUN apt-get update
RUN apt-get install -y pandoc
RUN apt-get install -y vim
RUN Rscript -e "install.packages('ggplot2')"
RUN Rscript -e "install.packages('rmarkdown')"
RUN Rscript -e "install.packages('here')"
RUN Rscript -e "install.packages('knitr')"
RUN Rscript -e "install.packages('readr')"
RUN Rscript -e "install.packages('dplyr')"
RUN Rscript -e "install.packages('webshot')"
RUN apt-get install -y libcurl4-openssl-dev
RUN apt-get install -y libxml2-dev
RUN apt-get install -y libfontconfig1-dev
RUN apt-get install -y libssl-dev
RUN Rscript -e "install.packages('kableExtra')"

RUN mkdir project
workdir /project 
run mkdir Code
run mkdir Figures
run mkdir Data
run mkdir Report 

copy Makefile .
copy Final_Report.Rmd .
copy ReadMe.md . 
copy Data/train.csv Data 
copy Data/playerdata.csv Data
copy Code/01_rushing_plays.R Code
copy Code/02_plot_height_weight.R Code
copy Code/03_make_output3.R Code
copy Code/08_render_report.R Code


cmd make && mv Final_Report.html Report