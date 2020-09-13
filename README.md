# R_Analysis


AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles. There are a number of issues surrounding the vehicle’s specifications and manufacturing process that are blocking the manufacturing team from proceeding.To help analyze the production data in order to justify some last-minute design decisions.The launch of the MechaCar should be one of the most successful product launches.


# Objectives:


The goals of this challenge:



*  Design and interpret a multiple linear regression analysis to identify variables of interest.

*  Calculate summary statistics for quantitative variables.


*  Perform a t-test in R and provide interpretation of results.


*   Design your own statistical study to compare vehicle performance of two vehicles.



#  Instructions:

### (1)MPG Regression:


*  Using multiple linear regression, design a linear model that predicts the mpg of MechaCar prototypes using a number of variables within the MechaCar mpg dataset. Create a separate text file called MechaCarWriteUp.txt. In the text file, provide a small writeup of your interpretation of the multiple linear regression results. Be sure to include the following details:


Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?


Is the slope of the linear model considered to be zero? Why or why not?


Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?




### (2)Suspension Coil Summary:

*  Using the same MechaCarWriteUp.txt text file, provide a short write-up of your interpretation and findings for the suspension coil summary statistics. Be sure to include the following details:


The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per inch. Does the current manufacturing data meet this design specification? Why or why not?



### (3) Suspension Coil T-Test:

*  Using the same suspension coil data and the MechaCarChallenge.RScript file, determine if the suspension coil’s pound-per-inch results are statistically different from the mean population results of 1,500 pounds per inch. (Hint: Refer to the t-test section of this module to determine which statistical test to use.)


*  In the MechaCarWriteUp.txt text file, provide a small writeup of your interpretation and findings for the t-test results.



### (4) Design Your Own Study:



write a short description of a statistical study that can quantify how the MechaCar outperforms the competition. In your study design, be sure to write about the following considerations:

*  Think critically about what metrics you would think would be of interest to a consumer (cost, fuel efficiency, color options, etc.).


*  Determine what question we would ask, what the null and alternative hypothesis would be to answer that question, and what statistical test could be used to test this hypothesis.


* Knowing what test should be used, what data should be collected?





## Summary of Written Analysis:





         
                              # MPG Regression:

                              (1)Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

                              Call:
                              lm(formula = mpg ~ vehicle.length + vehicle.weight + spoiler.angle + 
                                  ground.clearance + AWD, data = Mecha_table)

                              Coefficients:
                                   (Intercept)    vehicle.length    vehicle.weight     spoiler.angle  
                                    -1.040e+02         6.267e+00         1.245e-03         6.877e-02  
                              ground.clearance               AWD  
                                     3.546e+00        -3.411e+00  


                              *Based on analysis, Vehicle lenth and ground.clearance are play important role for mpg values.They have postive value.




                              (2)Is the slope of the linear model considered to be zero? Why or why not?

                              *Based on Analysis, Slope isn't considered to be zero.because  R-square's value is  0.6825




                              (3)Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

                              Call:
                              lm(formula = mpg ~ vehicle.length + vehicle.weight + spoiler.angle + 
                                  ground.clearance + AWD, data = Mecha_table)

                              Residuals:
                                   Min       1Q   Median       3Q      Max 
                              -19.4701  -4.4994  -0.0692   5.4433  18.5849 

                              Coefficients:
                                                 Estimate Std. Error t value Pr(>|t|)    
                              (Intercept)      -1.040e+02  1.585e+01  -6.559 5.08e-08 ***
                              vehicle.length    6.267e+00  6.553e-01   9.563 2.60e-12 ***
                              vehicle.weight    1.245e-03  6.890e-04   1.807   0.0776 .  
                              spoiler.angle     6.877e-02  6.653e-02   1.034   0.3069    
                              ground.clearance  3.546e+00  5.412e-01   6.551 5.21e-08 ***
                              AWD              -3.411e+00  2.535e+00  -1.346   0.1852    
                              ---
                              Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

                              Residual standard error: 8.774 on 44 degrees of freedom
                              Multiple R-squared:  0.7149,	Adjusted R-squared:  0.6825 
                              F-statistic: 22.07 on 5 and 44 DF,  p-value: 5.35e-11


                              *Based on Analysis,R-squared value  is 0.7149 and p-value is 5.35e-11.liner model wiil  work  on mecharcar data set.


                              #Suspension Coil Summary:

                               (1)determine if the suspension coil’s pound-per-inch results are statistically different from the mean population results of 1,500 pounds per inch

                               Manufacturing_Lot Mean_PSI Medium_PSI Variance_PSI Standard_PSI
                                <chr>                <dbl>      <dbl>        <dbl>        <dbl>
                              1 Lot1                 1500.      1500.         1.15         1.07
                              2 Lot2                 1500.      1499.        10.1          3.18
                              3 Lot3                 1499.      1498.       220.          14.8 


                              *suspension coil summary statistics:


                              -> Based on summary, We got same value  for Lot1 & lot2  in mean around 1500.When  we saw  on variance in lot3.It had 220.which is meet design specification.



                              # Suspension Coil T-Test:


                                      Based on  T-test Analysis,Lot 1 had mean value 1500 and p value =0.9048.lot2 had mean value 1500 and p value = 0.3451 and Lot 3 had mean value 1499 and p-value:0.637.Assuming our significance level was the common 0.05 percent, our p-value is above our significance level. Therefore, we do not have sufficient evidence to reject the null hypothesis.

                                      #sample t-test:
                                      When we can take sample test,The p-value is0.6633 which is  above the assumed significance level. Therefore, we would state that there is not enough evidence to reject the null hypothesis and we can confirm our two samples are not statistically different.

                              #Design Your Own Study:


                              Is horse important for car performance?

                              (1)Think critically about what metrics you would think would be of interest to a consumer (cost, fuel efficiency, color options, etc.)
                              - Based on consumer,I did take horsepower data for analysis.Because Horsepower is play important role for vehicle.In vehicle,speed is dependent on horse power.


                              (2)Determine what question we would ask, what the null and alternative hypothesis would be to answer that question, and what statistical test could be used to test this hypothesis.



                                 #generate multiple linear regression model:

                                    Residuals:
                                        Min      1Q  Median      3Q     Max 
                                    -38.681 -15.558   0.799  18.106  34.718 

                                    Coefficients:
                                                Estimate Std. Error t value Pr(>|t|)   
                                    (Intercept)  79.0484   184.5041   0.428  0.67270   
                                    mpg          -2.0631     2.0906  -0.987  0.33496   
                                    cyl           8.2037    10.0861   0.813  0.42513   
                                    disp          0.4390     0.1492   2.942  0.00778 **
                                    drat         -4.6185    16.0829  -0.287  0.77680   
                                    wt          -27.6600    19.2704  -1.435  0.16591   
                                    qsec         -1.7844     7.3639  -0.242  0.81089   
                                    vs           25.8129    19.8512   1.300  0.20758   
                                    am            9.4863    20.7599   0.457  0.65240   
                                    gear          7.2164    14.6160   0.494  0.62662   
                                    carb         18.7487     7.0288   2.667  0.01441 * 
                                    ---
                                    Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

                                    Residual standard error: 25.97 on 21 degrees of freedom
                                    Multiple R-squared:  0.9028,	Adjusted R-squared:  0.8565 
                                    F-statistic:  19.5 on 10 and 21 DF,  p-value: 1.898e-08


                                            Based on Analysis, each Pr(>|t|) value represents the probability that each  coefficient contributes a random amount of variance to the linear model. According to our results, vehicle carb and disp (as well as intercept) are statistically unlikely to provide random amounts of variance to the linear model. In other words the vehicle carb and disp have a significant impact on on vehicale.. When an intercept is statistically significant, it means there are other variables and factors.



                              (3)Knowing what test should be used, what data should be collected


                              #One Sample t-test:


                                          t = 0, df = 31, p-value = 1
                                          alternative hypothesis: true mean is not equal to 146.6875
                                          95 percent confidence interval:
                                           121.9679 171.4071
                                          sample estimates:
                                          mean of x 146.6875 


                                          Based on own study's Analysis,Horse power is very important for car performce.based on test, Null hypothesis isn't rejected.

 
 
 
