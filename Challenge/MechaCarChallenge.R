library(tidyverse)
library(ggpubr)

# Import MechrCar mpg files:
Mecha_table <- read.csv(file='MechaCar_mpg.csv',sep=",", header = T)

#multiple linear regression:
lm(mpg ~ vehicle.length + vehicle.weight + spoiler.angle + ground.clearance + AWD,data=Mecha_table) 

#summary:
summary(lm(mpg ~ vehicle.length + vehicle.weight + spoiler.angle + ground.clearance + AWD,data=Mecha_table))

# import suspension_coil.csv:
Suspension<- read.csv(file='Suspension_Coil.csv',sep=",", header = T)

# summary statistics
Suspension %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),Medium_PSI=median(PSI),Variance_PSI=var(PSI),Standard_PSI=sd(PSI))

#generate 50 randomly sampled data points:
sample_table1 <- Suspension %>% sample_n(25)

#generate another 50 randomly sampled data points:
sample_table2 <-Suspension %>% sample_n(25)

# T-Test for lot1:
t.test(subset(Suspension,Manufacturing_Lot=="Lot1")$PSI,mu = 1500)
# T-Test for lot2
t.test(subset(Suspension,Manufacturing_Lot=="Lot2")$PSI,mu = 1500)
# T-test for lot3
t.test(subset(Suspension,Manufacturing_Lot=="Lot3")$PSI,mu = 1500)

#compare means of two samples
t.test(sample_table1$PSI,sample_table2$PSI) 

t.test(sample_table1$PSI, mu = 1500)
t.test(sample_table2$PSI, mu = 1500)


#Design Your Own Study:
# use hp from data:
carsData <- mtcars

#plot on graph:
ggdensity(carsData$hp,
          xlab = "hp - "
)
# Check with shapiro test:
shapiro.test(carsData$hp)

#generate multiple linear regression model:
lm(hp ~ mpg+ cyl + disp + drat+ wt + qsec + vs + am + gear + carb, data=carsData) 

#generate summary statistics:
summary_hp <- summary(lm(hp ~ mpg + cyl + disp + drat+ wt + qsec + vs + am + gear + carb, data=carsData))
summary_hp

#mean
Mean <- mean(carsData$hp)
Mean

#randomly sample 12
sample <-carsData %>% sample_n(12) 
#check with T-test
t.test(carsData$hp, mu =Mean,alternative = 'two.sided')



