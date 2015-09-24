#### STA 521 ####
#### Lab-1 ####
#### Tasks ####

#### Agenda Items #####
## 1. Initializing Variables ##

# Storing #
testVariable <- 1
testVariable <- 1.1
testVariable <- c('Spock', 'Kirk', 'Uhura', 'Scotty')
testVariable <- c(1, 2, 3)

# Variable Type #
class(testVariable)

# Variable Length # 
length(testVariable)

# Summary Statistics #
summary(testVariable)

# Printing #
print(testVariable)
(testVariable)

## 2. Indexing ##
# Accessing Elements #
testVariable[1]
testVariable[1:2]

# Dropping Elements #
testVariable [-1]

# Adding New Elements #
testVariable <- c(testVariable, c(1,2,3))

## 3. Loops ##

# While Loops #
testBoolean <- TRUE
iteration <- 0
while(testBoolean){
	print('Boostrapping will continue until morale improves')
	iteration <- iteration + 1
	if(iteration == 5){testBoolean <- FALSE}
}

# For Loops #
for (i in 1:length(testVariable)){
	print(testVariable[i])
}

## 4. Matrices ##

# The matrix() function #
testMatrix <- matrix(nrow = 2, ncol = 2, data = c(1,2,3,4))

# Addition, Subtraction, Multiplication #
testMatrix + testMatrix
testMatrix - testMatrix
testMatrix * testMatrix # This is wrong #
testMatrix %*% testMatrix # This is correct #

# Eigen Vectors #
eigen(testMatrix)$vectors

# Inversion/ Determinants #
solve(testMatrix)
det(testMatrix)

## 5. Basic Graphics ##
testX <- 1:20
testY <- 5*testX + rnorm(length(testX), 0, 2)

# Scatter Plots #
plot(testX, testY, pch=16, cex=0.5, main='Test Scatterplot')

# Histograms #
hist(testY, main='Test Histograms', breaks=10)

# Box-Plots #
boxplot(testY, main='Test Box Plot')

## 5. Reading Data into R ##

# A good general function #
# Specify the delimiter with 'sep'
read.table()

# A good wrapper for csv files #
read.csv()

## 6. Writing Basic Functions ##

# A short example function #

testFunction <- function(arg1, arg2){
	testValue <- arg1 + arg2
	return(testValue)
}

# Calling your function #
q1 <- testFunction(1,1)

