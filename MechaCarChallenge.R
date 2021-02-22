# Deliverable 1: Linear Regression to Predict MPG

# Use the library() function to load the dplyr package
install.packages("dplyr")

# Importing tidyverse
library(tidyverse)

# Import and read in the MechaCar_mpg.csv file as a dataframe
mechacar_df <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

# Perform linear regression using lm() function, pass in all six variables & add the dataframe as the data parameter
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mechacar_df)

# Use the summary() function to determine the p-value and the r-squared value for the linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mechacar_df)) 

# Plotting the linear model to understand summary
library(ggplot2)

# For vehicle_length
model <- lm(mpg ~ vehicle_length,mechacar_df) 
yvals <- model$coefficients['vehicle_length']*mechacar_df$vehicle_length +
  model$coefficients['(Intercept)'] 
plt <- ggplot(mechacar_df,aes(x=vehicle_length,y=mpg)) 
plt + geom_point() + geom_line(aes(y=yvals), color = "red") 

# For vehicle_weight
model <- lm(mpg ~ vehicle_weight,mechacar_df) 
yvals <- model$coefficients['vehicle_weight']*mechacar_df$vehicle_weight +
  model$coefficients['(Intercept)'] 
plt <- ggplot(mechacar_df,aes(x=vehicle_weight,y=mpg)) 
plt + geom_point() + geom_line(aes(y=yvals), color = "red")

# For spoiler_angle
model <- lm(mpg ~ spoiler_angle,mechacar_df) 
yvals <- model$coefficients['spoiler_angle']*mechacar_df$spoiler_angle +
  model$coefficients['(Intercept)'] 
plt <- ggplot(mechacar_df,aes(x=spoiler_angle,y=mpg)) 
plt + geom_point() + geom_line(aes(y=yvals), color = "red")

# For ground_clearance
model <- lm(mpg ~ ground_clearance,mechacar_df) 
yvals <- model$coefficients['ground_clearance']*mechacar_df$ground_clearance +
  model$coefficients['(Intercept)'] 
plt <- ggplot(mechacar_df,aes(x=ground_clearance,y=mpg)) 
plt + geom_point() + geom_line(aes(y=yvals), color = "red")

# For AWD
model <- lm(mpg ~ AWD,mechacar_df) 
yvals <- model$coefficients['AWD']*mechacar_df$AWD + model$coefficients['(Intercept)'] 
plt <- ggplot(mechacar_df,aes(x=AWD,y=mpg)) 
plt + geom_point() + geom_line(aes(y=yvals), color = "red")

# Deliverable 2: Create Visualizations for the Trip Analysis

# Import and read in the Suspension_Coil.csv file as a table
Suspension_Coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

# Create total_summary dataframe using the summarize() function 
#to get the mean, median, variance, and standard deviation of the suspension coil's PSI column
total_summary <- Suspension_Coil %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),Standard_Deviation=sd(PSI),.groups = 'keep')

# Create lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot 
# by the mean, median, variance, and standard deviation of the suspension coil's PSI column.
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI), Standard_Deviation=sd(PSI), .groups = 'keep')

