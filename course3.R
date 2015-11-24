############# System control
## basic R commands:
getwd()
dir()

## platform dependent commands
system('pwd')

## What is the file separator for my system?
.Platform$file.sep

## How can I make a file path that 'always works'
file.path('foo','bar.txt')


############# Writing functions
## Bare bones:
myFun <- function(){}

myFun()

## A function that does something
myFun <- function(){1+2}
myFun()

## A function that does something based on inputs
myFun <- function(x,y){x+y}
myFun(x=2, y=3)

## A function with default values
myFun <- function(x=1,y=2){x+y}
myFun(2)

##########################################
## Exercise 1
##########################################




############# Flow control
## 
2==2
## VS
1==2

## Other operators:
## !=
## >
## <
## >=
## <=


## If()
y <- 1
if(y==1){y<-pi}
y

## else
y <- 3
if(y==1){
  y<-pi
}else{
  y<-pi*2
}
y

## switch
centre <- function(x, type) {
  switch(type,
         mean = mean(x),
         median = median(x),
         trimmed = mean(x, trim = .1))
}
x <- rcauchy(10)
centre(x, "mean")
centre(x, "median")




############# Looping in R
## First lets make a list to loop over...
x <- list(a = 1:10, beta = exp(-3:3), logic = c(TRUE,FALSE,FALSE,TRUE))
x

## Using lapply
lapply(x, mean)


##  Now lets consider some square data:
x <- cbind(x1 = c(3,4,1,5), x2 = c(9,7,6,2))
x
## and then loop by row
apply(x, 2, sort)


## mapply for listing over two vectors (or more) at once
mapply(paste, 1:3, LETTERS[1:3], MoreArgs = list(sep="_"))

## And for loops
for(i in 1:4){message('count ',i)}

##########################################
## Exercise 2
##########################################




############# Some basic debugging tools
## How long is something taking?
system.time(date())

## How can I step into a function and see whats happening?
## First mark it with debug()
debug(mean)

## Then call it
## mean(1:4)

## Then unmark it later
undebug(mean)

##########################################
## Exercise 3
##########################################




############# Literate programming:
## http://rmarkdown.rstudio.com/

##########################################
## Exercise 4
##########################################

