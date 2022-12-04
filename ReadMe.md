# Final Project Repository 
Juliana Bushnell
Info 550
Emory University

## Introduction 

The final project for Info 550 is an opportunity for students to showcase the 
data science skills learned through the semester. While data reproducibility 
is the primary goal of the project, there are three components that are required.

1. Data manipulation
2. Data analysis
3. Report writing

The data I have chosen to work with comes from the 2020 NFL Big Data bowl.
Every year, the NFL puts on a ‘data bowl’ for armature sports analysts. In 2020, 
their challenge was using player tracking data to predict how many yards will 
an NFL player gain after receiving a handoff. This data set contains are 49 
variables and 682154 observations. The data spans between the 2017-2019 season.


Through this project, I hope to utilize both skills learned in this course, and 
integrate some sports analytics packages into my report. We'll see though.

## Building the docker image and building 

In the terminal, you can enter `make docker_image` in order to just create the image. 

You can also enter `make docker_mac` to create the report using docker on your mac. 
Similarly, you can enter `make docker_pc` to create the report if you have a pc. 

## Package troubleshoot

If for whatever reason there are troubles with packages, you can enter `make install` to install all required packages. 
