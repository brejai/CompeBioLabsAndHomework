#Discrete time logistic growth model
DiscreteTimeFunction <- function(r=.8,k=10000,finaltime=12,Start=2500){ #set paramtersfor function
  Generations <- seq(1,finaltime)
  Abundance <- rep(Start, finaltime)
  for (t in seq(2,finaltime)) {
    n[t] <- n[t-1] + (r * n[t-1] * (k-n[t-1])/k)
    print(n[t])
    # since they are parameters and not variables you can change the number any time you want to change the variables for the equation 
  } 
  #graph of abundance and time 
  plot(Generations, Abundance)
  return(n)
}

    #command calls on the function
    
    #create data frame with 2 colums, generations and abundance
    mydata.csv <- write.table(MyData, file = "MyData.csv",row.names=FALSE, na="",col.names=TRUE, sep=",")
    DataFrame2 <- data.frame(Generations, Abundance)