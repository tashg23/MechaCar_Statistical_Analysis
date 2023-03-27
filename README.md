# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
- We used multiple linear regression to predict mpg. 
- Vehicle length and ground clearance provided a non-random amount of variance to the mpg values 
- The slope would not be 0, since there are variables (vehicle length and ground clearance) that are able to predict mpg. If none of the variables had any effect on mpg, the slope would be 0, and we would fail to reject the null hypothesis 
- The adjusted r2 value is 0.68, which "indicates that a large proportion of the variability in the outcome has been explained by the regression model" (http://www.sthda.com/english/articles/40-regression-analysis/167-simple-linear-regression-in-r/) 
<img width="464" alt="MLR" src="https://user-images.githubusercontent.com/113721712/227819200-d65ef295-ebe5-41f7-b8b8-e8b55000c43e.png">



## Summary Statistics on Suspension Coils 
- Based on the summary statistics (see image below), Lot 3 clearly has a variance that exceeds 100 pounds per square inch. Lots 1 and 2 do not exceed this specification. 
<img width="321" alt="Summary Stats" src="https://user-images.githubusercontent.com/113721712/227819402-f6e81646-83cc-4ec8-a9de-1d362cbb76ca.png">

## T-tests on Suspension Coils
- The t-test confirms that Lot 3 has a PSI that is statistically different from the population mean of 1500 pounds per square inch. The PSI of Lot 3, when compared to the population mean, has a p-value of 0.04. Lots 1 and 2 were not statistically different from the population mean. See images below. 

![Lot1](https://user-images.githubusercontent.com/113721712/227821591-86150427-7e95-49b2-ad1d-3bf7385d0fc8.png)

![Lot2](https://user-images.githubusercontent.com/113721712/227821596-ea5c4756-1b11-4896-97fd-bf6be29c04f0.png)

![Lot3](https://user-images.githubusercontent.com/113721712/227821598-3a30da7c-483c-48cd-b77d-ee6bb9753330.png)
