# Import tidyverse and dplyr
library(tidyverse)

# Read MechaCar_mpg.csv dataset
mechacar_mpg <- read.csv(file = 'MechaCar_mpg.csv', check.names=F,stringsAsFactors = F)

# Perform linear regression, assign to variable
linear_mecha <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechacar_mpg)

#  p-value and the r-squared value
summary(linear_mecha)
