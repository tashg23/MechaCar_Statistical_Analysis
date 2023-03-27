# MechaCarChallenge

# Import libraries
library(dplyr)

# Deliverable 1
mechacar <- read.csv('MechaCar_mpg.csv', check.names = T, stringsAsFactors = F)
head(mechacar)

# Multiple linear regression using all 6 variables 
summary(lm(mpg~vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar))

# Deliverable 2 
suspension_data <- read.csv('Suspension_Coil.csv', check.names = T, stringsAsFactors = F)
head(suspension_data)

# Generate Summary Statistics 
total_summary <- suspension_data %>% 
  summarize(
    mean=mean(PSI), 
    median=median(PSI), 
    variance=var(PSI), 
    sd=sd(PSI)
    )

total_summary

lot_summary <- suspension_data %>% 
  group_by(Manufacturing_Lot) %>% 
    summarize(
      mean=mean(PSI), 
      median=median(PSI), 
      variance=var(PSI), 
      sd=sd(PSI)
    )

lot_summary
  