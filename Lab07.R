#problem 1

# if a negative number is entered the error message will pop up

Fib <- function(n, starting = 1){
  if(n <= 2)
    print("replace number with greater or equal to 3")
  else{
    fibsequence <- rep(1,n) #repeat 1 to n which is 2
    fibsequence[1] <- starting
    for (i in seq (3,n)){ #start at 3 because it starts at 2
      fibsequence[i] <- fibsequence[i-1]+ fibsequence[i-2]
    }
    #if correct the functionif return the fobonacci sequence 
  return(fibsequence) 
  }
  
}
 



DiscreteTimeFunction <- function(r=.8,k=10000,finaltime=12,Start=2500){ #set paramtersfor function
  time <- seq(1,finaltime)
  n <- rep(Start, finaltime)
  for (t in seq(2,finaltime)) {
    n[t] <- n[t-1] + (r * n[t-1] * (k-n[t-1])/k)
    print(n[t])
    # since they are parameters and not variables you can change the number any time you want to change the variables for the equation 
  } 
  #graph of abundance and time 
  plot(time,n)
  return(n)
}


abundance <- n
time <- 1:12
plot(time,abundance)


#adjacency matrix 

