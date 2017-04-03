#problem 1

FibFn <- function(n, starting = 1){
  if(n <= 0)
    print("replace number with positive")
  else{ 
    Fib <- rep(1,n)
    Fib[1] <- starting
    for (i in seq (3,n)){
      Fib[i] <- Fib[i-1]+Fib[i-2] #general equation for any fibonacci problem
    }
    return(Fib)
  }
} 

for(i in seq 3,n){
  replacement <- 
}