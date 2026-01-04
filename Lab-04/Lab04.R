setwd("C:\\Users\\metal\\Documents\\SLIIT Y02S02\\IT 2110 - PAS\\R Labs\\Lab 04")
getwd()

file <- read.table("DATA 4.txt", header = TRUE)

View(file)

names(file) <- c("Team", "Team Attendance", "Team Salary", "Years")

attach(file)
class(file)

boxplot(`Team Attendance`, main = "Boxplot of Team Attendance", col = "pink", horizontal = TRUE, xlab = "Average number of spectators for a match that the team play")
boxplot(`Team Salary`, main = "Boxplot of Team Salary", col = "cyan", horizontal = TRUE, xlab = "Earning of the team")
boxplot(Years, main = "Boxplot of Teams' Experience in Years", col = "lightgreen", horizontal = TRUE, xlab = "Years since the team has owned a stadium")

hist(`Team Attendance`, main = "Histgram of Team Attendance", col = adjustcolor(rainbow(7), alpha.f = 0.8))
hist(`Team Salary`, main = "Histgram of Team Salary", col = adjustcolor(rainbow(7), alpha.f = 0.8))
hist(Years, main = "Histgram of Teams' Experience in Years", col = adjustcolor(rainbow(7), alpha.f = 0.8))

stem(`Team Attendance`)  
stem(`Team Salary`, scale = 1)  
stem(Years, scale = 1)  

attendance_mean <- mean(`Team Attendance`)
salary_mean <- mean(`Team Salary`)
years_mean <- mean(Years)

attendance_median <- median(`Team Attendance`)
salary_median <- median(`Team Salary`)
years_median <- median(Years)

getmode <- function(k) {
  freq_table <- table(k) 
  most_frequent_value <- names(freq_table)[which.max(freq_table)]
  
  if (max(freq_table) == 1) {
    return(-1)  
  } else {
    return(most_frequent_value) 
  }
}

getmode(`Team Attendance`)
getmode(`Team Salary`)
getmode(Years)

attendance_quantiles <- quantile(`Team Attendance`)
attendance_Q1 <- attendance_quantiles[2]  
attendance_Q2 <- attendance_quantiles[3]  
attendance_Q3 <- attendance_quantiles[4]  

attendance_IQR <- IQR(`Team Attendance`)
attendance_SIQR <- IQR(`Team Attendance`) / 2

help(fivenum())

salary_quantiles <- quantile(`Team Salary`)
salary_Q1 <- salary_quantiles[2]  
salary_Q2 <- salary_quantiles[3]  
salary_Q3 <- salary_quantiles[4]  

salary_IQR <- IQR(`Team Salary`)
salary_SIQR <- IQR(`Team Salary`) / 2


years_quantiles <- quantile(Years)
years_Q1 <- years_quantiles[2]  
years_Q2 <- years_quantiles[3]  
years_Q3 <- years_quantiles[4]  

years_IQR <- IQR(Years)
years_SIQR <- IQR(Years) / 2

get_outliers <- function(dataset) {
  quartiles <- quantile(dataset)
  IQR_value <- IQR(dataset)
  l_bound <- quartiles[2] - 1.5 * IQR_value  
  u_bound <- quartiles[4] + 1.5 * IQR_value  
  
  outliers <- dataset[dataset < l_bound | dataset > u_bound]
  return(outliers)
}

years_outlers <- get_outliers(Years)
attendance_outlers <- get_outliers(`Team Attendance`)
salary_outlers <- get_outliers(`Team Salary`)
