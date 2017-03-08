#part 1

for (i in seq(1,10)) {
  print("hi")
}
#print hi ten times

PiggyBank <- 10
Allowance <- 5
Gum <- 2*(1.34)

for (i in seq(1,8)) {
  x <- PiggyBank + Allowance - Gum
  PiggyBank <- x
  print(x)
  
} #total amount of money each week for 8 weeks
  
PopSize <- 2000
Shrinkage <- PopSize*(.05)
for (i in seq(1,7)) {
  print(PopSize-Shrinkage) 
  x <- PopSize-Shrinkage
  PopSize <- x
  Shrinkage <- PopSize*(.05)
} 
#calculates each years size

Start <- 2500
n <- rep(2500, 12)
for (t in seq(2,12)) {
  n[t] <- n[t-1] + (0.8 * n[t-1] * (10000-n[t-1])/10000)
  print(n[t])
} 
#n[t] is abundance of population oer time
 # k carrying capacity
abundance <- n
time <- 1:12
plot(time,abundance)


n <- 18
data <- rep(0,n)

for (i in seq(1,n)) {
  data[i] <- 3*i
}


data <- rep(0,n)
data[1] <- 1
for (i in seq(2,n)){
  data[i] <- 1 + (2*data[i-1])
}

n <- 20 #first 20 numbers of the fibonacci sequence
Fib <- rep(1,n)
for (i in seq (3,n)){
  Fib[i] <- Fib[i-1]+Fib[i-2] #general equation for any fibonacci problem
} 
#nested forloop
CO2Data <- read.csv("compBioSandbox/CompBio_on_git/Labs/Lab04/CO2_data_cut_paste.csv") 
MetaData <- read.csv("compBioSandbox/CompBio_on_git/Labs/Lab04/MetaData_CO2_emissions.txt")

#preallocate a matrix for the data
nRows <- dim(CO2Data)[1]
nCols <- dim(CO2Data)[2]
 


#Making a matrix for 263 empty data inputs that 
#will be 0 for now
CO2matrix <- matrix(nrow=nRows-1, ncol=nCols, data=0)
CO2matrix[,1] <- CO2Data[2:nRows,1]

for(j in seq(2, nCols)){
  
  #j is a new variable for the collums
  #i is for thw rows
  for(i in seq(2,nRows)) {
    
    
    CO2matrix[i-1,j] <- (CO2Data[i,j]-CO2Data[(i-1),j])/CO2Data[(i-1),j] * 100 
  } #multiply by 100 to get the percent change 

}