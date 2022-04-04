##################################################
# Hands-on exercise for R Crash-course
# by Arporn Wangwiwatsin (arpowa@kku.ac.th). CC BY-SA2.0
##################################################
##### INSTRUCTION #####
# Try to GUESS/PREDICT what the output of the command will be 
# RUN one command at a time... did you guess correctly? 
# INVESTIGATE the command. Try to understand how it work. You can edit the code, and see whether the result is what you expect. 

# Finally, we will ask you to MODIFY a command to get a desired output 

# REMEMBER: Don't be afraid of making mistakes. Don't get frightened if the screen return ERROR in red. Read the error message. It often tells you where the problems are. 

# REMEMBER: Ask if you get stuck :) 

##################################################
# Any text after # (hashtag) is COMMENT. This means it is for human to read and make note. R ignore these comment texts. 

# To run a command, place cursor anywhere on that line, then hit Ctrl+Enter or Command⌘+Enter if you use Mac

# To run multiple lines at the same time, hilight those lines, then Ctrl+Enter or Command⌘+Enter
##################################################

# Let's run your first command
# Place your cursor on the line below and hit Ctrl+Enter or Command⌘+Enter

print("Hello World!")


##### PART 1: Basic arithmetic and variables #####
5+7
100-30
9/3
3*4
sqrt(36)
4^2

# We can add value to an object 
x = 2
# Run the object name to display the value stored inside 
x
# We can store a set of value in an object - use c() command to "create" a 1-dimensional object
y = c(11,15,17,20)
y
# What do class() and length() commands do? 
class(y)
length(y)

x
x * 5
y
y + 10

x * y 

newNumber = x * 5
newNumber

myNumber = c(200,50,10,60,90)

# Some functions for working with numerical data
sum(myNumber)
median(myNumber)
mean(myNumber)
max(myNumber)
min(myNumber)
range(myNumber)
sd(myNumber)

####
# Special puzzle - don't worry if you get confused
myNumber
# What do these commands do?
rank(myNumber)
sort(myNumber)
order(myNumber)
####

# Let's move on to work with text data (in programming world, this data type is known as "character" or "string")
# "character" data is always flanked by quotation mark
myCharacter = ("Hello World!")
myCharacter
rep(myCharacter, 3)

anyName = c("Harry", "Potter", "Spiderman", "Wanda", "Wonder Woman")
length(anyName)
class(anyName)

# Notice the use of square bracket [ ]. What do you think the square bracket is for?
anyName
anyName[2]
anyName[c(2,4,5)]
anyName[c(2,4,10)]

# What does it mean when we use double equal sign ==
anyName[2] == "Wanda"
anyName[2] == "Potter"

# How about when we use single equal sign?
anyName
anyName[2] = "Sailormoon"
anyName

# We can use [ ] with TRUE FALSE conditioning to pick the values we want
myNumber
myNumber > 70
myNumber < 300
myNumber > 70 & myNumber < 300
myNumber[myNumber > 70 & myNumber < 300]  # & means AND
myNumber[myNumber > 70 | myNumber < 300]  # | means OR 

##### PART 2: Dataframe #####
# R come with some sample dataset. Here we load "mtcars" dataset to our RStudio workspace.
data("mtcars")
mtcars

head(mtcars)

# What does these functions do? 
rownames(mtcars)
colnames(mtcars)

colnames(mtcars) <- c("milesPERgallon", "noOFcylinders", "Displacement", "horsepower",
                      "RearAxleRatio", "Weight", "miletime", "VperS", "autoORmanual", 
                      "noOFforwardGears", "noOFcarburetors")
colnames(mtcars)

mtcars$milesPERgallon
mtcars$Displacement

mtcars[1,]
mtcars[,1]

mtcars[1,3]

mtcars[c(1,2,3) , ]

mtcars[c(1,2,3) , 5]

mtcars[c(1,2,3) , "noOFcylinders"]
mtcars[c(1,2,3) , "NoOFcylinderS"] # R command is case-sensitive 

mtcars["Datsun 710", ]

mtcars
dim(mtcars)

small_mtcars <- mtcars[c(1,2,3) , c(4,5,6,7)] # We can take part of a data table and create a new one. 

small_mtcars
dim(small_mtcars)

##### PART 3/1: Graphic - possibly the most fun part #####
mtcars

# Try simple scatter plots
plot(mtcars$milesPERgallon)
plot(x = mtcars$milesPERgallon, y = mtcars$noOFcylinders)

# Try boxplot
mtcars$autoORmanual
mtcars$autoORmanual = factor(mtcars$autoORmanual, levels=c("1","0")) # use factor() command to define grouping of the dataset

plot(mtcars$horsepower ~ mtcars$autoORmanual)
plot(x = mtcars$autoORmanual, y = mtcars$horsepower) 

plot(x = mtcars$autoORmanual, y = mtcars$horsepower, ylim = c(30,400))

plot(x = mtcars$autoORmanual, y = mtcars$horsepower, ylim = c(30,400), 
     main = "Horse power in auto and manual cars")

plot(x = mtcars$autoORmanual, y = mtcars$horsepower, ylim = c(30,400), 
     main = "Horse power in auto and manual cars",
     ylab = "Horse power", xlab = "")

# There are other types of plots in R 
data <- c("2000"=0, "2001"=20, "2002"=50, "2003"=100)
barplot(data, main="Number of R developers")

data1 <- rnorm(1000, mean=0)
data1
data2 <- rnorm(1000, mean=1)
data2
boxplot(data1, data2)

data <- c("Mon"=1, "Tue"=3, "Wed"=6, "Thr"=4, "Fri"=9)
data
pie(data)

data <- rnorm(1000)
data
hist(data)
hist(data, breaks = c(-4,-3,-2,-1,0,1,2,3,4))
hist(data, breaks = 10)

##### PART 3/2: Colours #####
# Try 
plot(1:10,col="#FF00FF")
plot(1:10,col=rgb(0,0,1)) # rgb()converts red green blue intensities to colour
plot(1:10,col="magenta")
plot(1:10,col="blue")

# There are some built-in R colour palettes. See examples here:
  # https://www.datanovia.com/en/blog/top-r-color-palettes-to-know-for-great-data-visualization/
  # https://www.nceas.ucsb.edu/sites/default/files/2020-04/colorPaletteCheatsheet.pdf 

# Try running these commands 
# NOTE: you have to change 'n' to a number of your choice. Try different number and see what happen
n = 10
rainbow(n)
heat.colors(n)
terrain.colors(n)
topo.colors(n)
cm.colors(n)

# An easy way to see what those colours mean
# Try with your barplot command
data <- c("gp1" = 5, "gp2" = 67, "gp3" = 7, "gp4" = 7, "gp5" = 8, "gp6" = 10)
barplot(data, col = c("green", "black", "pink"))
barplot(data, col = rainbow(6))

# Try colouring the mtcars plot from before
plot(x = mtcars$autoORmanual, y = mtcars$horsepower, ylim = c(30,400), 
     main = "Horse power in auto and manual cars",
     ylab = "Horse power", xlab = "",
     names = c("Manual","Auto"))

plot(x = mtcars$autoORmanual, y = mtcars$horsepower, ylim = c(30,400), 
     main = "Horse power in auto and manual cars",
     ylab = "Horse power", xlab = "",
     names = c("Manual","Auto"),
     col = "green")

plot(x = mtcars$autoORmanual, y = mtcars$horsepower, ylim = c(30,400), 
     main = "Horse power in auto and manual cars",
     ylab = "Horse power", xlab = "",
     names = c("Manual","Auto"),
     col = c("green", "purple"))

# what does dev.off() command do? 
dev.off()

##### Group exercise #####
# Modify this script to create the image as shown on the slide

data <- c(1,3,5,6,7,8,10,6,4,2)
___plot(height = data, names.arg = c(___,___,___,___,___,___,___,___,___,___),
        col = rainbow(____),
        ____ = "CliNaP-M Day 1",
        ____ = "______ _____")

##### Final note #####
# What we have learnt today are only built-in functions that come with R. There are many more built-in function that are waiting for you to explore. Also, R can do so much more with additional packages that you can download from internet (like plug-ins and add-ons in other software).

# About R packages
# R comes with many built-in functions, but these might not be enough to do some of the work, or will require writing a very long code. 
# Functions come as part of packages. 
# Nice people (i.e. developers and programmers) have created many useful packages that contain add-on functions for R. 
# Most of the packages you will need will be at https://cran.r-project.org/ or https://www.bioconductor.org/. 

#	There are so many packages!! How do I know which one to download???! Often the decision comes from seeing published papers that do similar work are using some particular packages, or packages are suggested in an online forum on how to solve a certain problem. 

#	The packages also come with instructions on how to install. This usually involved one of the following commands
# install.packages()
# biocLite()

#	Briefly, in order to install a package:

# 1)	Download the package into your computer (You only need to do this step once). Do not download the package as a zip file, instead use RStudio interface for the download. **For CliNaP-M hands-on we already did this step for you.** 

# 2)	Load the package into R environment using library() command. (You need to do this every time you close and re-open R or RStudio)




