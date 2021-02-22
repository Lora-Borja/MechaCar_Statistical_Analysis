# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

The r-squared value is 0.7149, which means that roughly 71% of MPG predictions will be correct when using this linear model. The p-value is 5.35e-11, which is much smaller than the usual assumed significance level of 0.05%. Therefore, we can state that there is sufficient evidence to reject our null hypothesis, which is safe to assume that the slope of our linear model is not zero.

![Summary_Linear_Regression](https://github.com/Lora-Borja/MechaCar_Statistical_Analysis/blob/main/images/Summary_LinearRegression.PNG)


In order for me to grasp which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset, I chose to visualize them in plots to better determine. As I understood, if the regression model contains variables that are statistically significant, a reasonably high R-squared value makes sense, which should indicate that changes in the independent variables correlate with shifts in the dependent variable. 

* AWD and Spoiler Angle does not seem to have a significant relationship to MPG, therefore, using these two variables to predict the MPG may not be as accurate.


![AWD_Spoiler_vsMPG](https://github.com/Lora-Borja/MechaCar_Statistical_Analysis/blob/main/images/AWD_Spoiler_vsMPG.png)



* Ground Clearance, Vehicle Length, and Vehicle Weight suggests have a significant impact on MPG, which is assumed that these variable statistically provided a non-random amount of variances to the dataset.


![VehicleL_GroundC_vsMPG](https://github.com/Lora-Borja/MechaCar_Statistical_Analysis/blob/main/images/VehicleL_GroundC_vsMPG.png)


![VehicleW_vsMPG](https://github.com/Lora-Borja/MechaCar_Statistical_Analysis/blob/main/images/VehicleW_vsMPG.png)
 

## Summary Statistics on Suspension Coils

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Looking at our total summary, the current manufacting data meets the design specifications with a variance of 62.29. Based on individual lots, 1 and 2 meets design specifications with variances of 0.98 and 2.73 respectively. However, lot 3 does not meet design specification with a huge variance of 170.28

* Total Statistics Summary 

![total_summary](https://github.com/Lora-Borja/MechaCar_Statistical_Analysis/blob/main/images/total_summary.PNG)

* Summary Statistics by Manufacturing Lot

![lot_summary](https://github.com/Lora-Borja/MechaCar_Statistical_Analysis/blob/main/images/lot_summary.PNG)

