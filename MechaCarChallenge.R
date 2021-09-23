library(dplyr) # Load in dplyr
library(ggplot2)

car.mpg.df <- read.csv('resources/MechaCar_mpg.csv') # Create dataframe for mechacar csv
head(car.mpg.df)

linear.model <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = car.mpg.df) # create linear model
summary(linear.model)

mpg_lm <- function(y.var){
  
  yvals <- linear.model$coefficients['mpg']*car.mpg.df$mpg +
    linear.model$coefficients['(Intercept)']
  
  plt <- ggplot(car.mpg.df, aes(x=mpg, y= y.var))
  
  plt + labs(y=y.var) + geom_point() + geom_smooth(method="lm", se=FALSE, col="red") + geom_line(aes(y=yvals), color = "red") #plot scatter and linear model
}

mpg_lm(car.mpg.df$vehicle_weight)
mpg_lm(car.mpg.df$vehicle_length)
mpg_lm(car.mpg.df$spoiler_angle)
mpg_lm(car.mpg.df$ground_clearance)
mpg_lm(car.mpg.df$AWD)


# Lot tables

suspension.df <- read.csv('resources/Suspension_Coil.csv') 

total.summary <- suspension.df %>% summarise(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

lot.summary <- suspension.df %>% group_by(Manufacturing_Lot) %>% summarise(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

head(total.summary)

head(lot.summary)


#Total T Test

total.test <- t.test(suspension.df$PSI, mu=1500)

total.test

# T Test Lot 1

lot.one.t <- t.test(subset(suspension.df, Manufacturing_Lot=="Lot1")$PSI, mu=1500) # For some reason this line isn't showing in html view

lot.one.t

# T Test Lot 2

lot.two.t <- t.test(subset(suspension.df, Manufacturing_Lot=="Lot2")$PSI, mu=1500)

lot.two.t

# T Test Lot 3

lot.three.t <- t.test(subset(suspension.df, Manufacturing_Lot=="Lot3")$PSI, mu=1500)

lot.three.t