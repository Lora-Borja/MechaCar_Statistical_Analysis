# MechaCar_Statistical_Analysis


## Linear Regression to Predict MPG

The r-squared value is 0.7149, which means that roughly 71% of MPG predictions will be correct when using this linear model. The p-value is 5.35e-11, which is much smaller than the usual assumed significance level of 0.05%. Therefore, we can state that there is sufficient evidence to reject our null hypothesis, which is safe to assume that the slope of our linear model is not zero.

![Summary_Linear_Regression](https://github.com/Lora-Borja/MechaCar_Statistical_Analysis/blob/main/images/Summary_LinearRegression.PNG)


For me to grasp which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset, I chose to visualize them in plots to better determine. As I understood, if the regression model contains variables that are statistically significant, a reasonably high R-squared value makes sense, which should indicate that changes in the independent variables correlate with shifts in the dependent variable. 

* AWD and Spoiler Angle does not seem to have a significant relationship to MPG, therefore, using these two variables to predict the MPG may not be as accurate.


![AWD_Spoiler_vsMPG](https://github.com/Lora-Borja/MechaCar_Statistical_Analysis/blob/main/images/AWD_Spoiler_vsMPG.png)



* Ground Clearance, Vehicle Length, and Vehicle Weight suggests these have a significant impact on MPG, which is assumed that these variables statistically provided a non-random number of variances to the dataset.


![VehicleL_GroundC_vsMPG](https://github.com/Lora-Borja/MechaCar_Statistical_Analysis/blob/main/images/VehicleL_GroundC_vsMPG.png)


![VehicleW_vsMPG](https://github.com/Lora-Borja/MechaCar_Statistical_Analysis/blob/main/images/VehicleW_vsMPG.png)
 

## Summary Statistics on Suspension Coils

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Looking at our total summary, the current manufacturing data meets the design specifications with a variance of 62.29. Based on individual lots, 1 and 2 meets design specifications with variances of 0.98 and 7.47 respectively. However, lot 3 does not meet design specification with a huge variance of 170.29.

* Total Statistics Summary 

![total_summary](https://github.com/Lora-Borja/MechaCar_Statistical_Analysis/blob/main/images/total_summary.PNG)

* Summary Statistics by Manufacturing Lot

![lot_summary](https://github.com/Lora-Borja/MechaCar_Statistical_Analysis/blob/main/images/lot_summary.PNG)


## T-Tests on Suspension Coils

![ttest_all_lots](https://github.com/Lora-Borja/MechaCar_Statistical_Analysis/blob/main/images/ttest_all_lots.PNG)

![ttest_lots1-3](https://github.com/Lora-Borja/MechaCar_Statistical_Analysis/blob/main/images/ttest_lots1-3.PNG)

Additional analysis of the lots with the above one sample T-Test shows that:
* The p-value of 1 for the combined lots is once again higher than the assumed significance level. 
* Lot 1 has a p-value of 1.568e-11 and lot 3 has 0.1589 which means both are also higher the assumed significance level.
* Lot 2 has a p-value of 0.0005911 which falls below the significance level.

We can determine that all manufacturing lots and each lot individual Lots of 2 and 3 has no statistical difference from the population mean of 1,500 pounds per square inch, while Lot 3 is showing the difference.

## Study Design: MechaCar vs Competition

There could be many factors that would be of interest to customers to choosing an automobile. MPG is one of the priorities as people become more conscious on how much they spend on fuel and its efficiency of their vehicles. Another important metric I would include is price since majority of the population will also factor in affordability as a huge determination in their decision making, just as much as fuel efficiency. In order to add a layer of interest, I would also cross examine various types of vehicles against its fuel efficiency.

Performing the statistical analysis with MechaCar against its competitors with regards to fuel efficiency and price will further provide better insights on the following hypothesis:
* MechaCar is both fuel efficient and affordable versus competition.
* MechaCar has various types of vehicles that are both fuel efficient and affordable.


The alternative hypothesis is:
* That MechaCar is fuel efficient but the price is above its competitors.
* There are competitors of Mechacar with more fuel-efficient vehicles.
* Only certain types of MechaCar vehicles are competitive in fuel efficiency and price.
