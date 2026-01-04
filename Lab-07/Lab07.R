getwd()
setwd("C:/Users/metal/Documents/SLIIT Y02S02/IT 2110 - PAS/R Labs/Lab 07")

#Question 01

# exactly 40 out of 44
dbinom(40, 44, 0.92)

# less than or equal 35
pbinom(35, 44, 0.92)

# at least 38
1 - pbinom(37, 44, 0.92)
pbinom(37, 44, 0.92, lower.tail = FALSE)

# between 40 - 42 (inclusively)
dbinom(40,44,0.92) + dbinom(41,44,0.92) + dbinom(42,44,0.92)

pbinom(42,44,0.92) - pbinom(39,44,0.92)


#Question 02
#lambda = 4.5 (per day)

# exactly 6
dpois(6,4.5)

# more than 6
1 - ppois(6,4.5)
ppois(6,4.5, lower.tail = FALSE)


#Question 03
#lambda = 0.5 (per hour)

# at most 3 hours
pexp(3, 0.5)

# more than 4 hours
pexp(4,0.5,lower.tail = FALSE)

# 2 to 4 hours
pexp(4, 0.5) - pexp(2, 0.5) 
 


#Question 04
#normal dist - mean : 36.8, SD : 0.4

# at least 37.9
pnorm(37.9, 36.8, 0.4, lower.tail = FALSE)

# between 36.4 and 36.9
pnorm(36.9, 36.8, 0.4) - pnorm(36.4, 36.8, 0.4)


# fall below 0.012
qnorm(0.012, 36.8, 0.4)

# fall above 0.01
qnorm(0.99, 36.8, 0.4)
