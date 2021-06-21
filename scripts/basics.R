# load packages ---------
# install.packages("some-package")
# readxl - excel
# haven - SPSS/Stata/SAS
# googlesheets - Google sheets
# datepasta - Copy and paste using datapasta
# crafter - A package to work with packet captures (PCAPs)
# tidyverse
# here
# skimr
# janitor
#
library(tidyverse)
library(here)
library(skimr)
# Read in data ---------
beaches <- read_csv(here("data", "sydneybeaches.csv"))
# Exploring the data ---------
View(beaches)
dim(beaches)
str(beaches)
glimpse(beaches)
head(beaches)
tail(beaches)
summary(beaches)
# Skimr ---------
skim(beaches)
