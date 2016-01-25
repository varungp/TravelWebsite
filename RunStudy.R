# Write something about the project

rm(list = ls())

##################################################################

getwd()

# Let's get the data
ProjectData = read.csv("data/Boats.csv", sep=";", dec = ",", header = TRUE)

##################################################################
#This is the file where I have the main report for the project
docfile = "doc/report.rmd"

##################################################################
## These are the main 'parameters of the project"


##################################################################
## This is where I ask RunStudy.R to "compile" my project document
source("R/library.R")

newfunction = function (x,y){
  z = x + y
  z*z
}

## Generate the Report
rmarkdown::render(docfile, quiet = TRUE)




