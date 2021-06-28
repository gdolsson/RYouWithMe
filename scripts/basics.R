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
library(janitor)

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

# tidying columns ---------
glimpse(beaches)

select_all(beaches, toupper) # All column heads to upper
select_all(beaches, tolower) # All column heads to lower

clean_names(beaches) # Janitor, all to lower and changing the "Enterococci (cfu/100ml)" one

names(beaches) # Nothing has changed, even though we've watched it change

# If you want to actually change data, you must asign to a new object/variable
cleanbeaches <- clean_names(beaches)
names(cleanbeaches)
View(cleanbeaches)
# Rename, in cleanbeaches enterococci_cfu_100ml to beachbugs
# newname = oldname
cleanbeaches <- rename(cleanbeaches, beachbugs = enterococci_cfu_100ml)
names(cleanbeaches)

