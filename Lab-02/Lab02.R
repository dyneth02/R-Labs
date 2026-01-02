getwd()
setwd("C://Users//metal//Documents//SLIIT Y02S02//IT 2110 - PAS//R Labs//Lab 02")

data <- read.csv("DATA 2.csv", header = TRUE, sep = ",")

data
summary(data)
fix(data)
View(data)
View(summary(data))
summary(data$Gender)
attach(data)
data$Gender
View(data$Gender)

txt <- read.table("Data1.txt", header = TRUE, sep = ",")
txt
View(txt)

write.csv(txt, file = "txt_to_csv.csv")
write.table(data, file = "csv_to_txt.txt")

# Question 01

findRoots <- function(a, b, c) {
  root_1 <<- (-b + sqrt(b^2 - 4*a*c)) / 2*a
  root_2 <<- (-b - sqrt(b^2 - 4*a*c)) / 2*a
  
  roots <- list(root_1, root_2)
  
  return(roots)
}

roots <- findRoots(1,2,-15)

print(paste("First root is ", roots[1]))
print(paste("Second root is ", roots[2]))

# Question 02

x <- c(1,2,3)   
x[1]/x[2]^3-1+2*x[3]-x[2-1] 

# Question 03

Log <- log(x)
Exp <- exp(x)

plot(Log, type = "o", col="#0000ff")
plot(Exp, type = "o", col="#00ff00")
plot(Log, Exp, type = "o", xlab = "Log patta", ylab = "Exp patta", col="#ff00ff")

# Question 04

divisible_by_3 <- function(k) {
  count <- 0
  for (num in 1:k) {
    if (num %% 3 == 0 ) {
      count <- count + 1
    }
  }
  
  return(count)
}

print(paste("There are", divisible_by_3(25), "elements in this vector"))

# Question 05

A <- c(12,4557,567,90,34,2)
B <- c(1:12)

for (a in A) {
  if (a %in% B) print(paste("Common element found : ", a))
}

# Question 06

v <- c(2, 12, 34, 655, 45, 78, 90, 12)

maximum <- v[1]

for (i in v) {
  if (i > maximum) maximum = i
}

print(paste("The maximum value is", maximum))


# Question 07

max(v)

# Question 08





