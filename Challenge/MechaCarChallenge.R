# Import MechrCar mpg files:
Mecha_table <- read.csv(file='MechaCar_mpg.csv',sep=",", header = T)

#multiple linear regression:
lm(mpg ~ vehicle.length + vehicle.weight + spoiler.angle + ground.clearance + AWD,data=Mecha_table) 

#summary:
summary(lm(mpg ~ vehicle.length + vehicle.weight + spoiler.angle + ground.clearance + AWD,data=Mecha_table))
