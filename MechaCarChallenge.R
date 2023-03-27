# MechaCarChallenge

# Import libraries
library(dplyr)

mechacar <- read.csv('MechaCar_mpg.csv', check.names = T, stringsAsFactors = F)
head(mechacar)

# Multiple linear regression using all 6 variables 
summary(lm(mpg~vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar))

        