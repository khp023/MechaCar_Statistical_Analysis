# Import tidyverse and dplyr
library(tidyverse)

# Read MechaCar_mpg.csv dataset
mechacar_mpg <- read.csv(file = 'MechaCar_mpg.csv', check.names=F,stringsAsFactors = F)

# Perform linear regression, assign to variable
linear_mecha <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechacar_mpg)

#  p-value and the r-squared value of linear regression
summary(linear_mecha)


# Import Suspension_Coil.csv
suspension_coil <- read.csv(file = 'Suspension_Coil.csv', check.names = F, stringsAsFactors = F)

# mean, median, variance, and standard deviation of the suspension coil’s PSI column.

total_summary <- suspension_coil %>% summarize(Mean=mean(PSI), Median=(median(PSI)), Variance=var(PSI), SD = sd(PSI))

# group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil’s PSI column

lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=(median(PSI)), Variance=var(PSI), SD = sd(PSI))


# perform t-tests to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch
t.test(suspension_coil$PSI, mu=1500)

t.test(subset(suspension_coil,Manufacturing_Lot == "Lot1")$PSI,mu=1500)

t.test(subset(suspension_coil,Manufacturing_Lot == "Lot2")$PSI,mu=1500)

t.test(subset(suspension_coil,Manufacturing_Lot == "Lot3")$PSI,mu=1500)
