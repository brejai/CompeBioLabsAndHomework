#part 1
x <- 9 
for (i in seq(x)) {
  if(i > 5)
  print ("number is greater than five")
} else {
  print("number is less than five")
}
#checks if the value is larger than 5, gives message about above or less than 5

Vector1 <- read.csv("CompBioLabsAndHomework/Lab05/Vector1.csv")

n <- length(Vector1$x)
for (i in seq(1,n)) {
  if(Vector1$x[i] < 0)
    Vector1$x[i] <- NA
} #replaces every negative value with `NA`
which (is.na(Vector1$x)) -> Indexes
Vector1$x[Indexes] <- 0 #replace all those `NA` values with zeroes.  

#new vector for values between 50 and 100 
which(Vector1$x < 100 & Vector1$x > 50) -> Y


read.csv("compBioSandbox/CompBio_on_git/Labs/Lab04/CO2_data_cut_paste.csv") -> Vector2
#first year for which data on "Gas" emissions were non-zero
which(Vector2$Gas < 0 | Vector2$Gas > 0) -> gasIndices
Vector2$Year[gasIndices[1]]

#part 2
#variables
totalGenerations <- 1000
initPrey <- 100 	# initial prey abundance
initPred <- 10		# initial predator abundance
a <- 0.01 		# attack rate
r <- 0.2 		# growth rate of prey
m <- 0.05 		# mortality rate of predators
k <- 0.1 		# conversion constant of prey into predators
p <- rep(initPred, totalGenerations)
n <- rep(initPrey, totalGenerations)
time <- seq(1,totalGenerations) #good for plotting


for (t in 2:length(time)) {
  n[t] <- n[t-1] + (r * n[t-1]) - (a * n[t-1] * p[t-1])
  if(n[t] < 0)
    n[t] <- 0
  p[t] <- p[t-1] + (k * a * n[t-1] * p[t-1]) - (m * p[t-1]) 
  if (p[t] < 0)
    p[t] <- 0
 }
# the carrying capacity equation
#graph for the predators
plot (x=time, y=p)
lines (time, p)
