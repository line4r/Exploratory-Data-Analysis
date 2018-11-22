library(dplyr)
setwd("G:/내 드라이브/R/project/chapter4_1")

sampleData = read.table(file.path("data","household_power_consumption.txt"),
                        sep=";", header=FALSE,
                        skip=grep("1/2/2007",
                                  readLines(file.path("data","household_power_consumption.txt")),fixed=TRUE)[1]-1,
                        nrows=grep("3/2/2007",
                                   readLines(file.path("data","household_power_consumption.txt")),
                                   fixed=TRUE)[1]-
                            grep("1/2/2007",
                                 readLines(file.path("data","household_power_consumption.txt")),
                                 fixed=TRUE)[1]
)
setNames = read.table(file.path("data","household_power_consumption.txt"),sep=";",nrows=1)
colnames(sampleData) = unlist(setNames)