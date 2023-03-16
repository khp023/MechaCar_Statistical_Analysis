# MechaCar Statistical Analysis

## General Overview

The application of R through RStudio is used to extract and transform data for a company, AutosRUs' and their dataset for the new MechaCar prototype. The following statistical analysis supports manufacturing pareto activity and technical analysis.

## Linear Regression to Predict MPG

Upon analyzed linear regression (refer to the Call section), the following was obtained from [MechaCar_mpg.csv](MechaCar_mpg.csv). 
![Linear Regression](/screenshots/linearregression.png)

With the consideration of a P-value < 0.05 being statistically significant, only the categories of vehicle length and vehicle ground clearance are considered to be non-random. 

As such, the slope of the linear model cannot be considered zero due to the successful linear model as implied by the P-values of the aforementioned categories. 

This model effective in being able to predict the MPG of MechaCar prototypes at a 71% efficiency as per the R-squared of 0.7149.

## Summary Statistics on Suspension Coils

Further processing of the additional data set provided in [Suspension_Coil.csv](Suspension_Coil.csv) is used to highlight lot to lot differences in production - particularly the weight capacities of multiple suspension coils (measured in PSI). 

In generating general table statistics as per `table_summary` below, we see a relatively high variance and standard deviation in the context of production in which each unit is to be created with consistent precision. 
![table_summary](/screenshots/table_summary.png)

Grouping by each of the three lot's for statistics yields the following: 
![lot_summary](/screenshots/lot_summary.png)

We see here that per the design specifications (variance < 100 PSI), Lot3 fails in production, despite the all three lots together passing. 

## T-Tests on Suspension Coils

To further confirm the statistical significance of the variance in Lot3, several t-tests were performed to confirm the data finding and if it is indeed different from the population mean of 1500 PSI. 

The following is obtained for the full set of lots: 
![tt1](/screenshots/ttest1.png)

And the following for each of the lots vs the population mean yielded the following: 
![tt2](/screenshots/ttest2.png)

We find that the t-test p-value of the full set of lots is 0.06, with Lot1 and Lot2 being 1 and 0.6072 respectively. Here, we fail to reject the null hypothesis as the p-value is greater than 0.05. 

For Lot3, however, the P-value is 0.04, just enough to be able to reject the null hypothesis- enough to perhaps initiate an investigation on the production practices that went into Lot3. 

## Study Design: MechaCar vs Competition

Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.

An additional study that can be performed to compare versus competitors could be the general carbon footprint. With recent developments in electric cars alongside right-to-repair in recent technologies, it has been able to make it easier for consumers to perform preventative maintenance and keep a better eco-impact. 

In doing so, we would require emissions metrics across mileage. We would require the same data for other competitors for comparison. 

`If the MechaCar is advantageous in being more eco-friendly, then the emissions per mileage is less than that of its competitors`

Given that the competitors in the market serve as the population, a one-sample t-test can be used to identify this information. 

