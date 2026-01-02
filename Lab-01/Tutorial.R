getwd()
setwd("C://Users//metal//Documents//SLIIT Y02S02//IT 2110 - PAS//R Labs")
print("Hi")
print(1:10)
print(10:1)
print(10:1:2)
print(10:1*2)
print(10*2:2)
print(10:2*2)
print(100:1*10)
print(25:0.25*4)
print(101*100)
print(101%%100)
print(101/100)
print(101%/%100)


x = 5
y = 10
print(x%%y)
print(x%/%y)
isTRUE(x == y)
x = "hola"


a = 3
a <- 6
a <<- 9
a = 3

print(a)
a
x
x = "hola"
paste(x, a)

str1 <- "fuck"
str2 <- "you"
str3 <- paste(str1, str2)
str3

var1 <- var2 <- var3 <- "Orange"
var1
var2
var3


a <- 9 + 3i
b <- 3
c <- (a+b)/3
c
class(c)
class(b)
b <- 3L
class(b)


as.numeric(b)
class(b)

d <- as.complex(b)
class(d)
d


max(a,c,d)
sqrt(y)
abs(-3)
ceiling(1.4)
floor(1.4)
round(1.4)
round(1.55)

nchar(str3)
grepl(" ", str3)

fruits <- list("amba", "jambu", "pera", "kesel")
for (fruit in fruits) {
  print(fruit)
}

adjs <- list("flat", "big")
objs <- list("ass", "melons")

for (adj in adjs) {
  for (obj in objs) {
    print(paste(adj,obj))
  }
}

txt <- "global variable"
my_function <- function() {
  txt = "fantastic"
  paste("R is", txt)
}

my_function()

txt

# vectors

v1 <- 1:10
class(v1)

v2 <- c(1:10)
class(v2)

v3 <- c(1,2,3,4,5,6,7,8,9,10)
class(v3)

v4 <- c(1:12.5)
v4
class(v4)

length(v1)
length(v4)

v5 <- c(1,6,3,8,2,76,245)
sort(v5)

v3[0]
v3[1]
v3[10]
v3[c(4,8)]
v3[-1]

v6 <- seq(from=1 , to=100, 20)
v6
class(v6)

v7 <- c(seq(from=0, to=100, by=20))
v7
class(v7)


# factors

genre <- c(1, 2, 3, 1, 3, 1, 1)
Genre <- factor(genre, c(1,2,3), c("pop", "metal", "trap"))
Genre

# matrices

m1 <- matrix(c(12,56,23,89), nrow=2, ncol=2)
m1

m2 <- matrix(c(12,56,23,89), nrow=2, ncol=2, byrow = TRUE)
m2

# data frames (tables)

table <- data.frame(
  Name = c("Akon", "Bkon", "Ckon"),
  Age = c(10, 16, 20),
  Grade = c("A", "A-", "C")
)

table
table["Name"]
table["Age"]

summary(table)

table[1]
table$Name


