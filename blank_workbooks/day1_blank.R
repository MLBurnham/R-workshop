######################
## my_first_program.R
######################

# set working directory
setwd("C:\\Users\\mikeb\\OneDrive - The Pennsylvania State University\\R-workshop")
# Import a dataset
df <- read.csv('data/justice_results.csv')
# Do some function
n <- replicate(100000, sum(df$petitioner_pitch))

##############
## Data Types
##############
# Use typeof to identify the "type" of an object



# you can also use class (and mode() and storage.mode()). class() gives a slightly 
# different answer more relevant for object oriented programming, which you 
# generally won't do in R. Class can also be changed by the user, while type cannot.

# changing data between types is called "coercion" 


###################
## Data Structures
###################

# Vectors are the fundamental data structure in R

# they will coerce data to a single type

# Why is this both a numeric and a vector?
# R uses vectorized functions by default, meaning it operates on each element
# of the vector by default. typeof() is thus being applied to every element of 
# num_vect


# lists, however, are not vectorized by default because of they can contain
# heterogeneous data types

# typeof() evaluates the list object rather than the elements of the list

# vectorized functions don't work on lists


# A matrix contains vectors all of the same type


# an array is a matrix that can have more than two dimensions.
# same matrix as above

# now we add a dimension


# Data frames are an nxm series of vectors, and can contain vectors of different
# data types


# this means vectorized functions work on data frame columns



# lists can contain anything, including data frames or other lists



##############
## Operators
##############
# Arithmetic
2+2 # addition
2-2 # subtraction
2*2 # multiplication
2/2 # division
2%%2 # Modulus, remainder
2^2 # Exponentiation

# Logical
2>2 # greater than
2<2 # less than
2<=2 # less than or equal to
2>=2 # greater than or equal to
2==2 # exactly equal to
2!=2 # not equal to
2|2 # or (vectorized)
2&2 # and (vectorized)

# Assignment
x <- 2 # Generally the preferred assignment operator
x = 2
2 -> x # don't use this as a rule of thumb

# Misc.
1:10 # create a sequence
'cat' %in% c('cow','cat','dog','chicken') # test if an element is in a vector

#############
## Functions
#############
?library() # access help for a function
?require()
# library() and require() both load packages to your environment. library() returns
# an error if the package isn't found. require() returns a logical value.
# require() is designed to be used in functions and thus library is more commonly
# used, but you will see both.

# The values you pass to a function are called arguments

# if you don't specify which argument is which, R will infer based on position

# some arguments have default values the function will use if values aren't specified

