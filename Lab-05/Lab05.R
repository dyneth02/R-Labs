setwd("C:/Users/metal/Documents/SLIIT Y02S02/IT 2110 - PAS/R Labs/Lab 05")
getwd()

file5 <- read.table("Data.txt", header = TRUE, sep = ",")
names(file5) <- c("Company Name", "Shareholders Number")
View(file5)


hist(file5$`Shareholders Number`,
     main = "Shareholders Count vs Company",
     xlab = "Number of Shareholders",
     ylab = "Number of Companies",
     col = rainbow(7),
     breaks = 5,
     border = "gray30",  
)

hist(file5$`Shareholders Number`,
     main = "Shareholders Count vs Company",
     xlab = "Number of Shareholders",
     ylab = "Number of Companies",
     col = rainbow(7),
     xlim = c(130,270),
     breaks = 7,
     border = "gray30",  
)

