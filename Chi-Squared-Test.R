#Creates a matrix, putting the sample and population distributions
#into 7 rows for each ethnicity
ethnicities <- matrix(c(2751, 29, 4854, 66, 10221, 84, 92, 1, 7864, 21, 375, 1, 4047, 32), 
                        byrow = TRUE, nrow = 7)

#Names all 7 rows by ethnicity
rownames(ethnicities) <-c("African American/Black", "Asian/Pacific Islander", "Hispanic/Latinx",
                          "Native American/Alaskan Native", "White/Caucasian", "Other", "Biracial/Multiracial") 
#Names both columns by population and sample
colnames(ethnicities) <-c("Population", "Sample")

#Views the The matrix created
ethnicities

#Computes a Chi-Squared Test and shows the result
model <- chisq.test(ethnicities)
model

#View the expected distribution
model$expected
#View the Pearson Residuals
model$residuals


newEthnicities <- matrix(c(2751, 29, 4854, 66, 10221, 84, 7864, 21, 4047, 32), 
                      byrow = TRUE, nrow = 5)
#Names all 7 rows by ethnicity
rownames(newEthnicities) <-c("African American/Black", "Asian/Pacific Islander", 
                          "White/Caucasian", "Other", "Biracial/Multiracial") 
#Names both columns by population and sample
colnames(newEthnicities) <-c("Population", "Sample")

#Views the The matrix created
newEthnicities

#Computes a Chi-Squared Test and shows the result
model <- chisq.test(newEthnicities)
model
