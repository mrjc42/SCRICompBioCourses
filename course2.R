## Variables 
pi

## Operators
pi * 2

1 + 2

## Assignment
foo <- "yes"
bar = "no"

foo
bar

############ Vectors in R
## character vectors
LETTERS

## integer vectors
numbers <- 1:10
numbers

## how to make custom character vectors with c()
string <- c('The', 'lazy', 'brown', 'fox')
string

############ How to use Functions
## help('grepl')

## arguments "in order"
grepl('A', LETTERS)

## arguments "by name"
grepl(x=LETTERS, pattern='A')

## Mixed arguments
grepl('A', x=LETTERS)

##########################################
## Exercise 1
##########################################



############ How to load external R packages
## using Library
library("stats4")

## listing loaded libraried
search()

## listing the contents of a loaded library
ls(2)

ls("package:stats4")


############ Popular objects in R
## What class is our object?
class(LETTERS)

class(pi)

## Hoe long is it?
length(LETTERS)

## List Objects
lst <- list(a=1, b='foo')
lst

length(lst)

##########################################
## Exercise 2
##########################################




## matrix objects
numVec <- c(1,2,3,11,12,13)
numVec
mat <- matrix(numVec, nrow = 2, ncol = 3, byrow = TRUE)
mat

## dimensions function 
dim(mat)

## 
length(mat)

## data.frame objects
df <- data.frame(number = 1:4, letter = c('A','B','C','D'))
df

dim(df)
length(df)


## 
library(Biobase)
data(sample.ExpressionSet)
sample.ExpressionSet

## 
## ?'ExpressionSet'

## 
## ?read.table


## Loading data into R: read.table()
filename = 'refFlat.txt.gz'
foo = read.table(file=filename, nrows = 3)
foo

## Loading data: readLines()
con <- file(filename)
bar = readLines(con)

## Loading data: database connections
library(org.Hs.eg.db)
con <- org.Hs.eg_dbconn()
dbGetQuery(con, "SELECT * FROM gene_info limit 3")

##########################################
## Exercise 3
##########################################





## Data coercion: data.frame converted into a list
as.list(df)

## Data coercion: data.frame converted into a matrix
as.matrix(df)

## Data coercion: data.frame converted into a vector...
as.vector(as.matrix(df))


################# Subsetting with '['
## Numeric subsetting with a single bracket.  '['
LETTERS[1]
LETTERS[1:3]
LETTERS[c(1,3)]
LETTERS[c(4,2)]

## Logical subsetting with a single bracket.  '['
shortLetters <- LETTERS[1:4]
shortLetters[c(FALSE, TRUE, TRUE, FALSE)]

## Named subsetting with a single bracket.  '['
names(shortLetters) <- c('foo','bar','baz','bob')
names(shortLetters)

shortLetters
shortLetters['foo']
shortLetters[c('bob','bar')]

## Using match()
match(shortLetters, c('C','A'))

## Using %in%
shortLetters %in% c('C','A')

c(shortLetters,shortLetters) %in% c('C','A')

## logical negation
!shortLetters %in% c('C','A')

## unique()
c(shortLetters,shortLetters)
unique(c(shortLetters,shortLetters))

##########################################
## Exercise 4
##########################################



##########################################
##########################################
## 45 min mark
##########################################
##########################################


################# Subsetting with '[['
## Numeric Subsetting with a double bracket '[['

## consider a list lst and what we get from '['
lst[1]
class(lst[1])

## Now consider '[['
lst[[1]]
class(lst[[1]])

## Now look at a data.frame with '['
df[1]
class(df[1])

## and with '[['
df[[1]]
class(df[[1]])


################# Subsetting with '[ and the second argument'
## two argument subsetting on a matrix
mat
## first row and col
mat[1,1]
## two rows and a column
mat[1:2,2]
## onw row and three columns
mat[2, 1:3]

##  two argument subsetting on a data.frame  
df
## first row and col
df[1,1]
## three rows and a column
df[1:3,1]
## one row and two cols
df[3,1:2]


## The class won't normally change
class(df)
class(df[3,1:2])

## BUT if you slice finely enough it will change
class(df[1,1])

## For this situation you can use a THIRD argument to prevent unwanted type casting
class(df[1,1, drop=FALSE])

########### Ways to get help
## 
## ?data.frame

## 
## ?'data.frame'

## 
##  ?'GenomicRanges-class'

## The example function 
example('as.numeric')


##########################################
## Exercise 5
##########################################



## 1.5 hour mark

