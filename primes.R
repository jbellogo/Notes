## PRIMES
setwd("/Users/juanbello/Downloads")
data <- read.csv("primes.csv")
names(data)<- c("index", "prime", "increment")

firstfty <-head(data, 50)
plot(firstfty$index, firstfty$increment)

secondfty <-data[51:100, ]
plot(secondfty$index, secondfty$increment)

intLen = 100
numInts = 6
par(mfrow = c(2, numInts/2)) # Create a 2 x 2 plotting matrix
for (i in 1:numInts){
  from = i*intLen
  to = (i+1)*intLen
  print(from)
  print(to)
  intval <- data[from:to, ]
  plot(intval$index, intval$increment)
}

