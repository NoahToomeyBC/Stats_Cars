# MechaCar Analysis
### Note: All tables and plots can be located in the R markdown file in this repo.

## Deliverable 1 Analysis

- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

  - Based on their low p-values, vehicle length and ground clearance add a non-random amount of variance to the mpg values. 

- Is the slope of the linear model considered to be zero? Why or why not?
  
  - The p-value of this linear model is 5.35e-11 meaning the slope is not zero as our assumed significance is 5%. Therefore, the null hypothesis should be rejected.
  
- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
  
  - According to the adjusted r-value, this model effectively predicts the mpg 68% of the time making it a relatively effective model.

## Deliverable 2 Analysis

- The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
  
  - Overall, the variance for the PSI of the coils in all manufacturing lots is sitting at 62.3 PSI meaning it is well within the acceptable range of 0-100 PSI. Lots 1 and 2 follow this trend with respective PSI variance values of .97 and 7.5, respectively. However, lot 3 should be examined as the lot's PSI is at 170 psi, nearly double the acceptable range.

## T-test Findings 

### Total Lots
![all_lots](https://user-images.githubusercontent.com/85508764/134550117-48c2db52-c370-4b7c-8a24-879f28b13962.png)

  - Overall, the p-value of all three lots is .06, which tells us to accept the null hypothesis as there is not enough evidence to support rejecting it.

### Lot 1
![lot1](https://user-images.githubusercontent.com/85508764/134550160-4a75d046-db83-43fd-be1f-3a7e300176cf.png)
  - Lot 1 has a p-value of one meaning that this sample mean is almost identical to the overall mean.
  
### Lot 2
![lot2](https://user-images.githubusercontent.com/85508764/134550174-0a271c2a-f890-4cd3-a9dc-d04aa3276288.png)
  - Lot 2, while not as close to the overall mean as lot 1, still has a very high p-value meaning we should once again accept the null hypothesis.
  
### Lot 3
![lot3](https://user-images.githubusercontent.com/85508764/134550189-55346343-1e9b-4bd9-9dbd-7d5a3a2481a9.png)
  - However, in lot 3, we should reject the null hypothesis as the p-value is 4% which is below our set acceptance level of 5%, showing that it has a non-random amount of variance in the mean.

## Study Design: MechaCar vs Competition

In the proposed study, researchers would examine the differences in car safety between MechaCar models and comparable models of the competition. 

### Metrics to be Tested

  - Dollar amount of damage: Dependent variable
    -  Air Bag Rating: Independent variable
    -  Frame strength: Independent variable
    -  Brake time: Independent variable
    -  Acceleration time: Independent variable
    -  ABS Availability: Independent variable

### Hypothesis
  - Null Hypothesis: There will be no difference in the dollar amount of damage between MechaCar and the competitions comparable models.
  - Alternative: Mechacar vehicles will incur 30% less in charges after being in an accident compared to comparable models.
### Types of Tests
  - 2 multiple linear regression models would work great here to both see the effects of individual metrics on each car model and also how the two car's safety features impact the amount of damage done to the vehicle. 
