# Deliverable 1: Linear Regression to Predict MPG

# Use the library() function to load the dplyr package
install.packages("dplyr")

# Import and read in the MechaCar_mpg.csv file as a dataframe
mechacar_df <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

# Perform linear regression using lm() function, pass in all six variables & add the dataframe as the data parameter
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mechacar_df)

# Use the summary() function to determine the p-value and the r-squared value for the linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mechacar_df)) 