# Write something about the project

rm(list = ls())
local_directory <- getwd()
datafile_name="Iberostar"
report_file = "report"
slides_file = "Slides"
factor_attributes_used= c(1:16)
factor_selectionciterion = "eigenvalue"
minimum_variance_explained = 65
rotation_used="varimax"
MIN_VALUE=0.5
max_data_report = 50 # can also chance in server.R
start_local_webapp <- 1


##################################################################



# Let's get the data
ProjectData <- read.csv(paste(paste(local_directory, "data", sep="/"), paste(datafile_name,"csv", sep="."), sep = "/"), sep=";", dec=",") # this contains only the matrix ProjectData
ProjectData=data.matrix(ProjectData) 

if (datafile_name == "Iberostar")
  colnames(ProjectData)<-gsub("\\."," ",colnames(ProjectData))

factor_attributes_used = unique(sapply(factor_attributes_used,function(i) min(ncol(ProjectData), max(i,1))))
ProjectDataFactor=ProjectData[,factor_attributes_used]
source(paste(local_directory,"R/library.R", sep="/"))

rmarkdown::render(report_file, quiet = TRUE )




