# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

The r-squared value is 0.7149, which means that roughly 71% of MPG predictions will be correct when using this linear model. The p-value is 5.35e-11, which is much smaller than the usual assumed significance level of 0.05%. Therefore, we can state that there is sufficient evidence to reject our null hypothesis, which is safe to assume that the slope of our linear model is not zero.

![Summary_Linear_Regression](https://github.com/Lora-Borja/MechaCar_Statistical_Analysis/blob/main/images/Summary_LinearRegression.PNG)


In order for me to grasp which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset, I chose to visualize them in plots to better determine. As I understood, if the regression model contains variables that are statistically significant, a reasonably high R-squared value makes sense, which should indicate that changes in the independent variables correlate with shifts in the dependent variable. 

* AWD and Spoiler Angle does not seem to have a significant relationship to MPG, therefore, using these two variables to predict the MPG may not be as accurate.


![AWD_Spoiler_vsMPG](https://github.com/Lora-Borja/MechaCar_Statistical_Analysis/blob/main/images/AWD_Spoiler_vsMPG.png)



* Ground Clearance, Vehicle Length, and Vehicle Weight suggests have a statistically significant impact on MPG, which is assumed that these variable provided a non-random amount of variances to the dataset.


![VehicleL_GroundC_vsMPG](https://github.com/Lora-Borja/MechaCar_Statistical_Analysis/blob/main/images/VehicleL_GroundC_vsMPG.png)


![VehicleW_vsMPG](https://github.com/Lora-Borja/MechaCar_Statistical_Analysis/blob/main/images/VehicleW_vsMPG.png)
 
