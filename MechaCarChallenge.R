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
  
# Deliverable 3 

# Is PSI of dataset different from population mean of 1,500? 
t.test(suspension_data$PSI, mu=1500)

?t.test

t.test(suspension_data$PSI, mu=1500, subset= Manufacturing_Lot %in% c(Lot1))
t.test(suspension_data$PSI, mu=1500, subset= Manufacturing_Lot %in% c(Lot2))
t.test(suspension_data$PSI, mu=1500, subset= Manufacturing_Lot %in% c(Lot3))




