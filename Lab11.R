rbinom(n = 1, size = 10, prob = 0.5) # simulating 10 coin flips (once)
rbinom(n = 8, size = 10, prob = 0.5) # simulating 10 coin flips (8 times)

# sample size of 20. 15% prbability for vaccinated, 40% for unvaccinated 
Vaccinated <- rbinom(n = 30, size = 20, prob = 0.15) # vaccinated people have 15% chance of getting flu

Unvaccinated <- rbinom(n = 30, size = 20, prob = 0.40) # unvaccinated people have 40% chance of getting flu

#compare histograms for both functions
hist(Vaccinated)
hist(Unvaccinated)
# there is a more normal frecuency distribution for vaccinated but for unvaccinated there is a down wad  trend

# population size = 500
# allele a is 55%
# allele b is 45%
size <- 500
AlleleA <- rbinom(n = 1 , size = 500, prob = 0.55)# probability of offspring have allele A
#going forward one generation in time
frequency <- AlleleA/size #updates

for (i in (1:1000)) {
  .55 <- probability 
  AlleleA <- rbinom(n = 1 , size = 500, prob = .55)
  
}


#Sampling Part B
sample(x= 1:4, size= 4, replace= FALSE, prob = NULL)

Blair <- 
Frankie <- 
Kim <- 
Morgan <-  


# 13 rolls of a fair 6 sided die
Thirteen <- sample(x=1:13, size=13,replace= FALSE,prob= NULL)
#histogram of function
hist(Thirteen)